void settings()
{
  size(1080,800);
}

void setup()
{
  background(0);
}

ball b = new ball(200,random(255),random(440,640),random(200,600));

void draw()
{
  background(200,255,255);
  if(b.isElastic())
  {
   // goElastic(1);
    for(int i = 0;i < 30; ++i)
    {
      colorMode(HSB);
      //background(random(255),255,255);
      newWidth += 2*(1 * -1);
      newHeight += 0.04*(1);
      ellipse(b.pos.x,b.pos.y,newWidth,newHeight);
      print(newWidth + "   " + newHeight + "\n");
    }
    for(int i = 0;i < 30; ++i)
    {
      background(random(255));
      newWidth -= 2*(1 * -1);
      newHeight -= 0.04*(1);
      //ellipse(b.pos.x,b.pos.y,newWidth,newHeight);
      print(newWidth + "   " + newHeight + "\n");
      delay(50);
    }
    b.move();
    //goOut(-1);
  }
  else
    b.move();
}
float newWidth = b.size;
float newHeight = b.size;
void goElastic(int side)
  {
    //float newWidth = b.size;
   // float newHeight = b.size;
    for(int i = 0;i < 30; ++i)
    {
      newWidth += 2*side;
      newHeight += 0.04*(side * -1);
      ellipse(b.pos.x,b.pos.y,newWidth,newHeight);
      delay(50);
    }
  }
  
void goOut(int side)
  {
   // float newWidth = b.size;
   // float newHeight = b.size;
   
   
   /*for(int i = 0;i < 30; ++i)
    {
      newWidth += 2*side;
      newHeight += 0.04*(side * -1);
      ellipse(b.pos.x,b.pos.y,newWidth,newHeight);
      print(newWidth + "   " + newHeight + "\n");
      delay(50);
    }*/
    
    delay(3000);
    
    for(int i = 0;i < 30; ++i)
    {
      newWidth -= 2*(side * -1);
      newHeight -= 0.04*(side);
      ellipse(b.pos.x,b.pos.y,newWidth,newHeight);
      print(newWidth + "   " + newHeight + "\n");
      delay(50);
    }
    b.move();
  }
