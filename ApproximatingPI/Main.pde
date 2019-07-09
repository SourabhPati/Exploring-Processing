void settings()
{
  size(1080,720);
}

Point p = new Point();
double totalP = 0,circleP = 0;
double record = 20;

void setup()
{
  background(0);
  noFill();
  stroke(255);
  strokeWeight(1);
  translate(width/2,height/2);
  rectMode(CENTER);
  rect(0,0,500,500);
  ellipse(0,0,500,500);
}

void draw()
{
  translate(width/2,height/2);
  for(int i=0;i<8000;++i)
  {
    countPoints();
    point(p.x,p.y);
    p.nextPoint();
    printPI();
  }
}

void countPoints()
{
    totalP++;    
    if(p.getDist()<250)
    {
      stroke(0,255,0);
      circleP++;
    }
}

void printPI()
{
    double myPI = 4*(circleP/totalP);
    double diff = (Math.PI - myPI) < 0 ? - (Math.PI - myPI) :( Math.PI - myPI) ;
    if(diff<record)
     {
       record = diff;
       print(myPI,"\n");
     }
}
