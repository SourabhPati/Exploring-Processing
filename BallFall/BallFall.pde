PImage GameOver = new PImage();
PImage cover = new PImage();
int score;
int fps = 60;
boolean start = true;

void setup()
{
  size(800,600);
  background(0);
  GameOver = loadImage("GameOver.png");
  cover = loadImage("cover.png");
  score = 0;
}

Ball gameBall = new Ball();
Bar gameBar = new Bar(12,150,550);
boolean collided = false;
int timer=0;


void draw()
{
  if(start){
    background(cover);
  }
  else if(!collided)
  {
    background(0);
    colorMode(HSB);
    gameBall.showBall();
    gameBar.showBar();
    colorMode(RGB);
    fill(255);
    textSize(28);
    text("Score : " + gameBall.score,10,30);
    collided = gameBall.gameover();
  }
  else
  {
    handleCollision();
  }
}
void mousePressed()
{
  start = false;
}

void handleCollision()
{
  background(0);
  image(GameOver,180,100);
  textSize(48);
  text("Final Score = " + gameBall.score ,250,500);
  timer++;
  if(timer > 3*fps)
  {
      start = true;
      timer = 0;
      collided = false;
      gameBall.score = 0;
      gameBall.pos.mult(0);
      gameBall.vel.mult(0);
      gameBall.pos.x = random(gameBall.size + 5,width - gameBall.size);
      gameBall.pos.y = random(gameBall.size+5,height - gameBall.size);
      gameBall.vel.x = random(-2,2);
      gameBall.vel.y = random(-5,-2);
  }
}
