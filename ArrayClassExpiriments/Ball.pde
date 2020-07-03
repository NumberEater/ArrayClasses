class Ball {
 private int x;
 private int y;
 private int dx;
 private int dy;
 private int diameter;
 private int grayscale;
 private int opacity;
 
 public Ball(int x, int y, int dx, int dy, int diameter, int grayscale, int opacity) {
  this.x = x;
  this.y = y;
  this.dx = dx;
  this.dy = dy;
  this.diameter = diameter;
  this.grayscale = grayscale;
  this.opacity = opacity;
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
  fill(grayscale, grayscale, grayscale, opacity);
  stroke(grayscale);
  strokeWeight(1);
  ellipse(x, y, diameter, diameter); 
 }
 public void move() {
  this.x += this.dx;
  this.y += this.dy;
 }
}
