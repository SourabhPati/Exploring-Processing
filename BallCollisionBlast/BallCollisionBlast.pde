void settings()
{
  size(1080,720);
}

ArrayList<Piece> pieces;
boolean collision = false;
Ball b = new Ball(150,13,new PVector(0,720/2),new PVector(5,0));
Ball otherB = new Ball(150,150,new PVector(1080,720/2),new PVector(-5,0));

void setup()
{
  pieces = new ArrayList<Piece>();
  for(int i = 0;i<30;++i)
  {
    pieces.add(new Piece(b.pos,otherB.hu,PVector.random2D()));
  }
  background(0);
}

void draw()
{
  background(0);
  if(!collision)
  {
    b.put();
    otherB.put();
    b.collided(otherB);
  }
  else
    onCollision();
}

void onCollision()
{
  for(int i =0;i<pieces.size();++i)
    pieces.get(i).put();
}
