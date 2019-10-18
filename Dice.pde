void setup()
{
  size(500, 500);
  noLoop();
  background(#2DCB3E);
}
void draw()
{
  int num = 0;
  background(#2DCB3E);
  for (int y = 50; y < 400; y+=60)
    for (int x = 50; x < 450; x +=60)
    {
      Die rob = new Die(x, y);
      rob.show();
      num = num + rob.numDots;
    }
  text("there are " + num+ " dots on screen", 180,450);  
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int numDots, myX, myY;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    numDots = (int)(Math.random() * 6) + 1;
    show();
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    fill(255, 255, 255);
    noStroke();
    rect(myX, myY, 50, 50);
    if (numDots == 1)
    {
      fill(0);
      ellipse(myX + 25, myY + 25, 10, 10);
    }
    if (numDots == 2)
    {
      fill(0);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    }
    if (numDots == 3)
    {
      fill(0);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    }
    if (numDots == 4)
    {
      fill(0);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
    }
    if (numDots == 5)
    {
      fill(0);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
    }
    if (numDots == 6)
    {
      fill(0);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 10, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
    }
  }
}
