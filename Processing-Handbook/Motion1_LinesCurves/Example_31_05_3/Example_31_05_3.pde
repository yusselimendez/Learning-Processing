float x1 = 20.0; // Initial x-coordinate
float y1 = 10.0; // Initial y-coordinate
float x2 = 70.0; // Final x-coordinate
float y2 = 80.0; // Final y-coordinate
float distX; // X-axis distance to move
float distY; // Y-axis distance to move
float x = 0.0; // Current x-coordinate
float y = 0.0; // Current y-coordinate
float step = 0.01; // Size of each step (0.0 to 1.0)
float pct = 0.0; // Percentage traveled (0.0 to 1.0)

void setup() {
  size(100, 100);
  noStroke();
  smooth();
  distX = x2 - x1;
  distY = y2 - y1;
}

void draw() {
  fill(0, 12);
  rect(0, 0, width, height);
  pct += step;
  if ((pct < 1.0) && (x < x2) && (y < y2)) {
  //if (pct < 1.0) {
    x = x1 + (pct * distX);
    y = x1 + (pct * distY);
    fill(255);
    ellipse(x, y, 20, 20);
  }
  
}