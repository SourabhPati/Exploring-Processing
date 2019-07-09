class ball
{
  float size;
  float paint;
  PVector pos;
  PVector vel;
  
  ball(float size,float paint,float x,float y)
  {
    this.size = size;
    this.paint = paint;
    pos = new PVector(x,y);
    vel = PVector.random2D();
    //vel = new PVector(0,5);
    vel.mult(12);
  }
  
  int atEdge()
  {
    if(pos.x >= width-(size/2) || pos.x<=size/2)
      return 1;
    if(pos.y >= height-(size/2) || pos.y<=size/2)
      return 2;
    else
      return 0;
  }
  void move()
  {
    colorMode(HSB);
    noStroke();
    fill(paint,255,255);
    if(atEdge() == 1)
    {
      vel.x = - vel.x;
      //goElastic(1);
    }
    if(atEdge() == 2)
    {
      vel.y = - vel.y;
      //goElastic(-1);
    }
      pos.add(vel);
      ellipse(pos.x,pos.y,size,size);
  }
  
  boolean isElastic()
  {
    if(atEdge() == 1 || atEdge() == 2)
      return true;
    else
      return false;
  }
}
