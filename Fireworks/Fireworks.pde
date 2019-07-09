class piece
{
  PVector pos = new PVector();
  PVector vel;
  float visible;
  //PVector acc = new PVector(0,0.55);
  float hu;
  
   piece(float hu,PVector rocPos)
   {
     this.hu = hu;
     pos = rocPos.copy();
     visible = 255;
   }
   
  void disp()
  {
    colorMode(HSB);
    stroke(hu,255,255,visible);
    strokeWeight(4);
    point(pos.x,pos.y);
  }
  void update()
  {
    for(int i = 0;i<10;++i)
    {
      visible -= 20;
      vel = PVector.random2D();
      vel.mult(random(10,40));
      pos.add(vel);
      this.disp();
      }
  }
}


class Fireworkss
{
  ArrayList<piece> explosion = new ArrayList<piece>();
  Fireworkss(float hu,PVector rocPos)
  {
    for(int i = 0;i<5;++i)
    {
      explosion.add(new piece(hu,rocPos));
    }
  }
  void run()
  {
  for(piece P : explosion)
    {
      P.update();
    }
   // print(explosion.size() + "\n");
  }
}
