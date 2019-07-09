class Pendulum
{
    float BOBMass;
    float StringLen;
    PVector anchorPoint;
    PVector BOBPos;
    
    float angle = 0;
    float speed = 0;
    
    float dampFactor;
    
    Pendulum()
    {
      BOBMass = 40;
      StringLen = 250;
      anchorPoint = new PVector(0,0);
      dampFactor = 2;
      
     BOBPos = new PVector(12,12);
    }
    
    void put()
    {
        stroke(255);
        strokeWeight(BOBMass/30);
        line(anchorPoint.x,anchorPoint.y,BOBPos.x , BOBPos.y) ;
        //colorMode(HSB);
        //if(frameCount%100 == 0)
        //  fill(random(255),255,255);
        
        ellipse(BOBPos.x , BOBPos.y,BOBMass,BOBMass);
        
        strokeWeight(10);
        point(anchorPoint.x,anchorPoint.y);
        
        BOBPos.x = sin(angle) * StringLen;
        BOBPos.y = cos(angle) * StringLen;
        
        
        angle = sin(speed);
        angle = map(angle,-1,1,-dampFactor,dampFactor);
        speed += 0.01;
        
        if(dampFactor>0)
          dampFactor -= 0.0004;
    }
}
