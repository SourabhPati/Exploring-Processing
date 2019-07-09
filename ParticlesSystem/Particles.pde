class Particle
{
  float rad;
  float hu;
  PVector pos;
  PVector vel;
  PVector grav;
  
  
  Particle(float rad,float hu)
  {
    this.hu = hu;    
    pos = new PVector(random(0,1920),random(0,1080));
    vel = new PVector(0,0);
    grav = new PVector(0,0);
    this.rad = rad;    
  }
  
  void updatePosition()
  {
    calcGrav();
    vel.add(grav);
    pos.add(vel);
    grav.mult(0);
    
  }
  void put()
  { 
    updatePosition();
    colorMode(HSB);
    stroke(hu,255,255);
    strokeWeight(rad);
    point(pos.x,pos.y);
  }
  
  void calcGrav()
  {
    PVector temp = new PVector(mouseX - pos.x,mouseY - pos.y);
    float dis = dist(pos.x,pos.y,mouseX,mouseY);
    temp.div(dis);
    temp.div(dis);
    grav.add(temp);
    grav.mult(50);
  }
}
