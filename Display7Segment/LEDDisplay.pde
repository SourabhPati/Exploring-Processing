class LEDDisplay
{
  boolean A,B,C,D;
  LEDSegment [] display;
  boolean [] state;
  float segmentLength;
  float baseDisplacement;
  PVector [] segmentPositions;
  
  LEDDisplay(float l)
  {
     state = new boolean[7];
     A = B = C = D = false;
     segmentLength = l;
     baseDisplacement = (segmentLength + segmentLength/3.1) / 2;
     segmentPositions = new PVector[7];
     display = new LEDSegment[7];
  }
  
  
  void toBinary(int num)
  {
    if(num>=0)
    {
        D = num % 2 == 1 ? true : false;
        num /= 2;
        C = num>0 ? (num % 2 == 1 ? true : false) : false;
        num /= 2;
        B = num>0 ? (num % 2 == 1 ? true : false) : false;
        num /= 2;
        A = num>0 ? (num % 2 == 1 ? true : false) : false;
    }
  }
  
  void formSegmentState()
  {
    state[0] = A || (B && D) || ( !B && !D) || C ;
    state[1] = !B || (C && D) || ( !C && !D) ;
    state[2] = B || !C || D ;
    state[3] = A || (B && !C && D) || ( !B && C) || ( !B && !D) || (C && !D) ;
    state[4] = (!B && !D) || (C && !D) ;
    state[5] = A || (B && !C) || (B && !D) || ( !C && !D) ;
    state[6] = A || (B && !C) || (B && !D) || ( !B && C) ;
  }
  
  void assignSegmentPositions()
  {
    segmentPositions[0] = new PVector(-2*baseDisplacement,0);
    segmentPositions[1] = new PVector(baseDisplacement,-baseDisplacement);
    segmentPositions[2] = new PVector(baseDisplacement,baseDisplacement);
    segmentPositions[3] = new PVector(2*baseDisplacement,0);
    segmentPositions[4] = new PVector(-baseDisplacement,baseDisplacement);
    segmentPositions[5] = new PVector(-baseDisplacement,-baseDisplacement);
    segmentPositions[6] = new PVector(0,0);
  }
  
  void formDigit(int num)
  {
    toBinary(num);
    formSegmentState();
    assignSegmentPositions();
    
    for(int i=0;i<7;++i)
      display[i] = new LEDSegment(segmentPositions[i],segmentLength,i % 3 == 0 ? true : false , state[i] == true ? 255 : 40);    
  }
  
  void displayDigit()
  {
    for(int i=0;i<7;++i)
      display[i].putSegment();
  }
}
