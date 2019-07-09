void settings()
{
  size(600,600);
}

Character keyVal;
int digit;

LEDDisplay L;

void setup()
{
  L = new LEDDisplay(150);
}

void draw()
{
  background(0);
  translate(width/2,height/2);
  L.formDigit(digit);
  L.displayDigit();
}

void keyPressed()
{
  keyVal = key;
  try
  {
    digit = Integer.parseInt(keyVal.toString());
  }
  catch(NumberFormatException ex)
  {
    digit = -1;
  }
}
