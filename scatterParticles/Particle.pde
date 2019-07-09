class particle
{
  PVector pos;
  PVector vel;
  PVector acc;
  
  particle()
  {
    pos = new PVector(400,50);
    acc = new PVector(0,0.04);
    vel = PVector.random2D();
    vel.mult(random(0,1.5));  //0 , 1.5 for g
  }
  void put()        //length of line proportional to speed
  {
    vel.add(acc);
    pos.add(vel);
    rect(pos.x,pos.y,10,10);
  }
}
