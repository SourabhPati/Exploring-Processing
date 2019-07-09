class Rocket
{
  PVector pos;
  PVector vel;
  PVector acc;
  float hu;
  float trans;
  
  Rocket(float h)
  {
    pos = new PVector(random(1080),720);
    vel = new PVector(0,random(-9.0,-6.5));
    acc = new PVector(0,0.55);
    vel.mult(3);
    this.hu = h;
    trans = 255;
  }
  
  void update()
  {
      stroke(hu,255,255,trans);
      vel.add(acc);
      pos.add(vel);
      trans -= 10;
  }
  
  void disp()
  {
    strokeWeight(8);
    point(pos.x,pos.y);
    //print(pos.x,pos.y + "\n");
  }
  
  void explode()
  {
    Fireworkss f = new Fireworkss(hu,pos);
    f.run();
    if(random(1)<0.1)
      r.remove(this);
  }
  
  boolean isTop()
  {
    if(vel.y >= 0)
    {
      return true;
    }
    else
      return false;
  }
  
}
