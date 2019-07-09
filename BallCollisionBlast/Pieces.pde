class Piece
{
  float hu;
  PVector pos;
  PVector vel;
  PVector g;
  
  Piece(PVector pos,float c,PVector v)
  {
    this.pos = pos;
    this.hu = c;
    this.vel = PVector.random2D();
    g = new PVector(0,0.01);
    vel.mult(random(1,1.5));
  }
  
  void put()
  {
      fill(hu,255,255);
      rect(pos.x,pos.y,20,20);
      pos.add(vel);
      //vel.add(g);
  }
  
}
