class MetaBall
{
  float radius;
  PVector pos;
  PVector vel;
  //PVector attraction;
  
  MetaBall(float size)
  {
    radius = size;
    pos = new PVector(random(radius,width-radius),random(radius,height- radius));
    vel = PVector.random2D();
    vel.mult(3);
  }
  
  void update()
  {
    pos.add(vel);
    if(pos.x > width - radius || pos.x < radius)
      vel.x = - vel.x;
    if(pos.y > height - radius || pos.y < radius)
      vel.y = - vel.y;
  }
  
  void putBall()
  {
    colorMode(RGB);
    fill(255);
    ellipse(pos.x,pos.y,radius * 2,radius * 2);
    update();
  }
}
