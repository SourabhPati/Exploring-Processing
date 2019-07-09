void settings()
{
  size(600,600);
}

String time;
int hrs;
int min;
int sec;

float secColor;
float minColor;
float hrColor;
float mid = 0;

void setup()
{
  secColor = random(0,90);
  minColor = random(90,180);
  hrColor = random(180,255);
}

void draw()
{
  translate(width/2,height/2);
  rotate(-PI/2);
  background(0);
  
  formClock();
  formDigitalTime();
  putDigitalTime();  
  formHands();
}

void formDigitalTime()
{
  hrs = hour();
  min = minute();
  sec = second();
  time = String.format("%02d",hrs) + ":" + String.format("%02d",min) + ":" + String.format("%02d",sec);
}

void putDigitalTime()
{
  rotate(PI/2);
  textSize(30);
  textAlign(CENTER);
  text(time,mid,120);
  textSize(40);
  text("CASIO",mid,-80);
}

void formClock()
{
  noFill();
  colorMode(HSB);
  strokeWeight(7);
  stroke(secColor,255,255);
  arc(mid,mid,455,455,0,map(sec,0,60,0,2*PI));
  strokeWeight(10);
  stroke(minColor,255,255);
  arc(mid,mid,430,430,0,map(min,0,60,0,2*PI));
  strokeWeight(20);
  stroke(hrColor,255,255);
  arc(mid,mid,390,390,0,map(hrs%12,0,12,0,2*PI)); 
}

void formHands()
{
  colorMode(HSB);
  
  strokeWeight(20);
  stroke(hrColor,255,255);
  pushMatrix();
  rotate(map(hrs%12,0,12,0,2*PI));
  line(0,0,0,-80);
  popMatrix();  
  
  strokeWeight(10);
  stroke(minColor,255,255);
  pushMatrix();
  rotate(map(min,0,60,0,2*PI));
  line(0,0,0,-150);
  popMatrix();  
  
  strokeWeight(7);
  stroke(secColor,255,255);
  pushMatrix();
  rotate(map(sec,0,60,0,2*PI));
  line(0,0,0,-160);
  popMatrix();  
  
  stroke(255);
  strokeWeight(20);
  point(0,0);
  
}
