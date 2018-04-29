float x1 = 20;
float y1 = 20;
float x2 = 80;
float y2 = 80;
float x = 0;
float y = 0;
float d = 20.0;
float speed = 1.0;
int direction = 1;

void setup() {
  size(100, 100);
  smooth();
  noStroke();
  fill(255, 204);
  x = x1;
  y = y1;
}

void draw() {
  fill(0, 12);
  rect(0, 0, width, height);
  fill(255);
  if((x < x2) && (y < y2)){
    ellipse(x, y, d, d);
    x = x + speed;
    y = y + speed;
  }
}