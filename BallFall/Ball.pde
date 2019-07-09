class Ball
{
  float size;
  int score;
  PVector pos;
  PVector vel;

  Ball()
  {
    size = 40;
    score = 0;
    pos = new PVector(random(size + 5,width - size),random(size+5,height - size));
    vel = new PVector(random(-2,2),random(-5,-2));
  }
  void showBall()
  {
    noStroke();
    pos.add(vel);
    ellipse(pos.x,pos.y,size,size);
    reflect();
  }

  void reflect()
  {
    if(pos.x<=(0+size/2) || pos.x >= (width-size/2))
     {
       vel.x = -vel.x;
       fill(random(255),255,255);
     }
    if(pos.y<=(0+size/2))
    {
      vel.y = -vel.y;
      fill(random(255),255,255);
    }
    hitBar();
  }

  void hitBar()      //fix reflections;
  {
    int barZone = getBarZone();
    colorMode(HSB);
    stroke(random(255),255,255);
    if(barZone == 1)
      {vel.x = - 1;print("zone 1\n");}
      
    else if(barZone == 2)
      if(vel.x >0)
        { vel.x = - vel.x;print("Zone 2\n");}
         
    else if(barZone == 3)
      {vel.x = random(-1,1);print("ZONE 3\n");}
      
    else if(barZone == 4)
      if(vel.x < 0)
          {vel.x = -vel.x;print("ZONE 4\n");}
          
    else if(barZone == 5)
      {vel.x = vel.x + 2;
        print("Zone 5\n");}
      
    if(barZone != 0)
    {
      vel.y = -vel.y;
      vel.mult(1.09);
      gameState();
    }
  }
  
  int getBarZone()
  {
    float BarPart = (gameBar.len)/5;
    if(pos.x >= mouseX - 5*(BarPart) && pos.x <mouseX - 4*(BarPart) && pos.y >= gameBar.vertCord - 30)
      return 1;
    else if(pos.x >= mouseX - 4*(BarPart) && pos.x <mouseX - 3*(BarPart) && pos.y >= gameBar.vertCord - 30)
      return 2;
    else if(pos.x >= mouseX - 3*(BarPart) && pos.x <mouseX - 2*(BarPart) && pos.y >= gameBar.vertCord - 30)
      return 3;
    else if(pos.x >= mouseX - 2*(BarPart) && pos.x <mouseX - 1*(BarPart) && pos.y >= gameBar.vertCord - 30)
      return 4;
    else if(pos.x >= mouseX - 1*(BarPart) && pos.x <mouseX && pos.y >= gameBar.vertCord - 30)
      return 5;
    else
      return 0;
  }

  void gameState()
  {
    if(!gameover())
        ++score;
    else
    {
      collided = true;
      //exit();
    }
  }
  
  boolean gameover()
  {
    if(pos.y >= 600)
      return true;
    else
      return false;   
  }
}
