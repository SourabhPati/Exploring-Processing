class Ball
{
  float size;
  float hu;
  PVector pos;
  PVector vel;
  
  Ball(float s,float colour,PVector p,PVector v)
  {
    this.size = s;
    this.hu = colour;
    pos = p;
    vel = v;
  }
  
  void put()
  {
    colorMode(HSB);
    noStroke();
    fill(hu,255,255);
    ellipse(pos.x,pos.y,size,size);
    pos.add(vel);
  }
  
  void collided(Ball b)
  {
    if(this.pos.x + size/2 >b.pos.x - size/2)
      collision = true;
  }
}
