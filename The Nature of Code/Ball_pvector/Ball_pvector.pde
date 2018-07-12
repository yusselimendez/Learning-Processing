PVector location;
PVector velocity;

void setup() {
  size(200,200);
  smooth();
  background(255);
  location = new PVector(100,100);
  velocity = new PVector(1,3.3);
}

void draw() {
  noStroke();
  fill(255,10);
  rect(0,0,width,height);
  
  //location = location + velocity;
  location.add(velocity);

  // Check for bouncing
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }

  // Display at x,y location
  stroke(0);
  fill(175);
  ellipse(location.x,location.y,16,16);
}