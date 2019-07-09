
ArrayList<Particle> particles;

int NumberOfParticles = 3000;
int ParticleSize = 5;

void setup()
{
  fullScreen();
  particles = new ArrayList<Particle>();
  for(int i=0;i<NumberOfParticles;i++)
    particles.add(new Particle(ParticleSize,random(255)));
}

void draw()
{
  background(0);
  for(int i=0;i<NumberOfParticles;i++)
  {
    Particle p = particles.get(i);
    p.put();
  }
}
