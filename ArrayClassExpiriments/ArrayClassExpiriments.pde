int index = 1000;
Ball[] balls = new Ball[index];

void setup() {
 size(1000, 640);
 frameRate(120);
 
 for(int i = 0; i < index; i++) {
  balls[i] = new Ball(int(random(50, width - 50)), int(random(50, height - 50)), int(random(-3, 3)), int(random(-3, 3)), int(random(10, 50)), int(random(0, 255)), 255); 
 
 }
}

void draw() {
 background(180);
 
 
 for(int i = 0; i < index; i++) {
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
