float x = 33.0;
float y = 5.0;
float radius = 15.0;
float velocity = 0.0;
float friction = 0.99;
float acceleration = 0.3;

void setup() {
  size(100, 100);
  smooth();
  noStroke();
  ellipseMode(RADIUS);
}

void draw() {
  fill(0, 10);
  rect(0, 0, width, height);
  fill(255);
  ellipse(x, y, radius, radius);
  //velocity increase each frame
  velocity += acceleration;
  //distance traveled decrease each frame
  velocity *= friction;
  y += velocity;
  if (y > height - radius) {
    y = height - radius;
    velocity = -velocity;
  }
}