int v1x, v1y, v2x, v2y, x1, x2, y1, y2, r1, r2, backgroundr, backgroundg, backgroundb;

void setup() {
  size(2500, 1500);
  frameRate(240);
  
  r1 = r2 = 25;
  x1 = width - 150;
  x2 = 150;
  y1 = y2 = height / 2;
  v1x = -5;
  v2x = 5;
  v1y = 4;
  v2y = 4;

}

void draw() {
 background(backgroundr, backgroundg, backgroundb);
 
 float distance = dist(x1, y1, x2, y2);
 if(distance <= r1 + r2) {
  v1x = -v1x;
  v2x = -v2x;
  v1y = - v1y;
  v2y = -v2y;
  backgroundr = int(random(0, 255));
  backgroundg = int(random(0, 255));
  backgroundb = int(random(0, 255));
 }
 
 stroke(0);
 strokeWeight(1);
 fill(255, 0, 0);
 ellipse(x1, y1, r1 * 2, r1 * 2);
 fill(0, 0, 255);
 ellipse(x2, y2, r2 * 2, r2 * 2);
 
 x1 += v1x;
 x2 += v2x;
 y1 += v1y;
 y2 += v2y;
 
 if(x1 <= r1 || x1 >= width - r1) {
  v1x = -v1x; 
 }
 if(x2 <= r2 || x2 >= width - r2) {
  v2x = -v2x; 
 }
 if(y1 <= r1 || y1 >= height - r1) {
  v1y = -v1y;
 }
 if(y2 <= r2 || y2 >= height - r2) {
  v2y = -v2y;
 }
}
