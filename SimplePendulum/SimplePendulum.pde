void setup()
{
    size(600,600);
}

Pendulum P1 = new Pendulum();
    int i = 0;

void draw()
{
    background(0);
    translate(width/2,200);
    P1.put();
    //frameRate(30);
}
void mousePressed()
{
  P1.dampFactor = 2;
}
