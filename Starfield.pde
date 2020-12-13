Particle [] stars = new Particle[500];
void setup()
{
  size(500, 500);
  background(0);
  for (int i = 0; i< stars.length; i++) {
    stars[i] = new Particle();
    stars[0] = new OddballParticle();
  }
}
void draw()
{
  for (int i=0; i<stars.length; i++) {
    stars[i].move();
    stars[i].show();
  }
}
class Particle
{
  double myX, myY, size, speed, angle;
  int myColor;
  Particle() {
    myX=250;
    myY=0;
    size = 2;
    speed= Math.random()*Math.PI;
    angle= Math.random()*7;
    myColor= color(255, (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void move() {
    myX = myX + Math.sin(angle)*speed;
    myY = myY + Math.cos(angle)*speed;
    size = 1;
  }
  void show() {
    noStroke();
    fill(myColor);
    ellipse((float)myX, (float)myY, (float) size, (float) size);
  }
}

class OddballParticle extends Particle
{
  double myX, myY, size, speed, angle;
  int myColor;
  OddballParticle() {
    myX = 0;
    myY= 400;
    size = 20;
    angle = 0;
    speed= Math.random()*2;
    myColor = color((int)(Math.random()*155)+100);
  }
  void move()
  {
    myX = myX + Math.cos(angle)*speed;
    myY =myY + Math.sin(angle)*speed;
  }
  void show() {
    noStroke();
    fill(myColor);
    rect((float)myX, (float)myY, (float)size, (float)size);
  }
}
