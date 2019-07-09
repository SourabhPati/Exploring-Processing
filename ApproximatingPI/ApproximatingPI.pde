class Point 
{
  float x;
  float y;
  
  Point()
  {
    x = 0.0;
    y = 0.0;
  }
  
  void nextPoint()
  {
    stroke(255,0,0);
    strokeWeight(2);
    x = random(-250,250);
    y = random(-250,250);
  }
  double getDist()
  {
    return dist(0,0,x,y);
  }
}
