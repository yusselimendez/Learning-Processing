Egg humpty; // Declare the object

void setup() {
  size(100, 100);
  smooth();
  // Inputs: x-coordinate, y-coordinate, tilt, height
  humpty = new Egg(50, 100, PI/32, 80);
}

void draw() {
  background(0);
  humpty.wobble();
  humpty.display();
}
// Insert Egg class