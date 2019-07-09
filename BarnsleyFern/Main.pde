void settings()
{
  size(1920,1080);
}

fern F = new fern();

void setup()
{
  background(0);
}

void draw()
{
  for(int i=0;i<20000;++i)
    putPoint(); 
}

void putPoint()
{
  float X = F.x;
  float Y = F.y;
  float px = map(X,-2.1820,2.6558,50,width-50);
  float py = map(Y,0,9.9983,height-50,50);
  point(px,py);
  F.transform();  
}
