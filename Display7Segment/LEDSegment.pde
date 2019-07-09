class LEDSegment
{
  float len;
  float wide;
  boolean horizontal;
  float alpha;
  PVector pos;

  
  LEDSegment(PVector pos,float l,boolean ori,float alp)
  {
    len = l;
    wide = len/3.1;
    horizontal = ori;
    alpha = alp;
    this.pos = pos;
  }
  
  void putSegment()
  {
    pushMatrix();
    if(horizontal)
      rotate(PI/2);
    noStroke();
    fill(255,0,0,alpha);
    rectMode(CENTER);
    rect(pos.x,pos.y,wide,len);
    triangle(pos.x - wide/2,pos.y - len/2,pos.x + wide/2,pos.y - len/2,pos.x,pos.y - (len/2 + wide/2));
    triangle(pos.x - wide/2,pos.y + len/2,pos.x + wide/2,pos.y + len/2,pos.x,pos.y + (len/2 + wide/2));
    popMatrix();
  }
}
