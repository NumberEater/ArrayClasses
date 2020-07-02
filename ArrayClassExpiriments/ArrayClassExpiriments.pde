Ball[] balls = new Ball[50];

void setup() {
 size(640, 480);
 frameRate(120);
 
 for(int i = 0; i < 50; i++) {
  balls[i] = new Ball(int(random(50, 400)), int(random(50, 400)), int(random(1, 3)), int(random(1, 3))); 
 }
}

void draw() {
 background(180);
 
 
 for(int i = 0; i < 50; i++) {
  balls[i].display();
  balls[i].move();
  if(balls[i].getX() <= 25 || balls[i].getX() >= width - 25) {
   balls[i].setDX((balls[i].getDX() * -1));
  }
  if(balls[i].getY() <= 25 || balls[i].getY() >= height - 25) {
   balls[i].setDY((balls[i].getDY() * -1));
  }
 }
}
