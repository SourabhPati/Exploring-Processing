class Bar
{
  float thickness;
  float len;
  float vertCord;
  
  Bar(float t,float l,float vc)
  {
    this.thickness = t;
    this.len = l;
    this.vertCord = vc;
  }
  
  void showBar()
  {
    colorMode(HSB);
    stroke(255,255,255);
    strokeWeight(thickness);
    line(mouseX - len,vertCord,mouseX,vertCord);
  }
}
