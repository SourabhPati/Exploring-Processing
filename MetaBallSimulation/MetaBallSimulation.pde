void settings()
{
  //fullScreen();
  size(800,800);
}

/*
*
*
*      FrameRate issue...code optimization and maybe GPU rendering (shaders) 
*
*/

int numberOfBalls = 6;
MetaBall [] MBalls = new MetaBall[numberOfBalls];

void setup()
{
  for(int i=0;i<MBalls.length;++i)
    MBalls[i] = new MetaBall(random(80,150));
  fill(0);
  textSize(width/40);
}

void draw()
{
  background(0);
  drawPixelField();
  for(MetaBall b : MBalls)
    b.update();
  text(floor(frameRate),width/25,height/20);
}

void drawPixelField()
{
  colorMode(HSB);
  loadPixels();
  float hu;
  for(int j=0;j<width * height;++j)
  {
    //for(int k =0;k<height;++k)
    //{
       int index = j;// + k * width;//blu bla bleh
       hu = 0;
       for(MetaBall b : MBalls)
         hu += 60 * b.radius/dist(j % width,j/width,b.pos.x,b.pos.y);
       pixels[index] = color(hu % 255,255,255);
   // }
  }
  updatePixels();
}
