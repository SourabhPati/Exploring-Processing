void settings()
{
  size(1080,2300);
}

String time;
int hrs;
int min;
int sec;

float clockRadius;
float minHourGap;
float secMinGap;

float hrHandThickness;
float minHandThickness;
float secHandThickness;

float secColor;
float minColor;
float hrColor;
float mid = 0;

void setup()
{
  secColor = random(0,90);
  minColor = random(90,180);
  hrColor = random(180,255);
  
  clockRadius = width - width/7.714 ;
  minHourGap = width/6.75;
  secMinGap = width/17.5;
  
  hrHandThickness = width/21.6;
  minHandThickness = width/41.53;
  secHandThickness = width/54;
  
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
  textSize(width/18);
  textAlign(CENTER);
  text(time,mid,width/4.5);
  textSize(width/13.5);
  text("CASIO",mid,-(width/5.4));
}

void formClock()
{
  noFill();
  colorMode(HSB);
  strokeWeight(secHandThickness);
  stroke(secColor,255,200);
  arc(mid,mid,clockRadius,clockRadius,0,map(sec,0,60,0,2*PI));
  strokeWeight(minHandThickness);
  stroke(minColor,255,200);
  arc(mid,mid,clockRadius - secMinGap,clockRadius - secMinGap,0,map(min,0,60,0,2*PI));
  strokeWeight(hrHandThickness);
  stroke(hrColor,255,200);
  arc(mid,mid,clockRadius - minHourGap,clockRadius - minHourGap,0,map(hrs%12,0,12,0,2*PI)); 
}

void formHands()
{
  colorMode(HSB);
  
  strokeWeight(hrHandThickness);
  stroke(hrColor,255,255);
  pushMatrix();
  rotate(map(hrs%12,0,12,0,2*PI));
  line(0,0,0,-(width/6.75));
  popMatrix();  
  
  strokeWeight(minHandThickness);
  stroke(minColor,255,255);
  pushMatrix();
  rotate(map(min,0,60,0,2*PI));
  line(0,0,0,-(width/3.6));
  popMatrix();  
  
  strokeWeight(secHandThickness);
  stroke(secColor,255,255);
  pushMatrix();
  rotate(map(sec,0,60,0,2*PI));
  line(0,0,0,-(width/3.375));
  popMatrix();  
  
  stroke(255);
  strokeWeight(hrHandThickness);
  point(0,0);
  
}
