void settings()
{
  size(1080,720);
}

ArrayList<Rocket> r = new ArrayList<Rocket>();
int myDelay = 0;

void setup()
{ 
  background(0);
  colorMode(HSB);
}

void draw()
{
   myDelay++;
  if(myDelay%6==0)
    background(0);
    
  if(random(1)<0.05)
    r.add(new Rocket(random(255)));
  for (int i = r.size() - 1; i >= 0; i--)
  {
    r.get(i).update();
    r.get(i).disp();
    if(r.get(i).isTop())
    {
      //print("hello\n");
      r.get(i).explode();
    }
  }
 // print(r.size() + "\n");
}
