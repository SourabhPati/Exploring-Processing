class fern
{
  float x;
  float y;
  
  fern()
  {
    x = 0.0;
    y = 0.0;
  }

int pick_trans()
{
  float pick = random(1);
  if(pick<0.01)
    return 1;
   if(pick<0.86)
     return 2;
   if(pick<0.93)
     return 3;
   else
     return 4;
}

void transform()
{
  int choice = pick_trans();
  stroke(0,255,0);
  strokeWeight(0.2);
  switch(choice)
  {
    case 1:
      x = 0;
      y = 0.16*y;
      break;
    case 2:
      x =  0.85*x + 0.04*y;
      y = -0.04*x + 0.85*y+ 1.6;
      break;
    case 3:
      x = 0.2*x - 0.26*y;
      y = 0.23*x + 0.22*y + 1.6;
      break;
    case 4:
      x = -0.15*x + 0.28*y;
      y = 0.26*x + 0.24*y + 0.44;
      break;      
  }
}

}
