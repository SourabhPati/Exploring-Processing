
ArrayList<particle> particles;

void setup()
{
  size(800,600);
  background(0);
  colorMode(HSB);
  stroke(random(255),255,255);
  strokeWeight(5);
  particles = new ArrayList<particle>();
  for(int i = 0;i<500;++i)
    particles.add(new particle());
}

void draw()
{
 //if(random(1)<0.4)
  background(0);
  for(int i = 0;i<particles.size();++i)
    particles.get(i).put();
}
