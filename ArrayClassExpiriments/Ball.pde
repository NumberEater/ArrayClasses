class Ball {
 private int x;
 private int y;
 private int dx;
 private int dy;
 
 public Ball(int x, int y, int dx, int dy) {
  this.x = x;
  this.y = y;
  this.dx = dx;
  this.dy = dy;
 }
 public int getX() {
  return this.x;
 }
 public int getY() {
  return this.y; 
 }
 public int getDX() {
  return this.dx; 
 }
 public int getDY() {
  return this.dy; 
 }
 public void setDX(int dx) {
   this.dx = dx;
 }
 public void setDY(int dy) {
  this.dy = dy; 
 }
 public void display() {
  fill(40, 40, 25);
  stroke(40, 40, 25);
  strokeWeight(1);
  ellipse(x, y, 30, 30); 
 }
 public void move() {
  this.x += this.dx;
  this.y += this.dy;
 }
}
