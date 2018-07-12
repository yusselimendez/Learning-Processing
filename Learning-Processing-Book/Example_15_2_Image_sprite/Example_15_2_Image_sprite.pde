
PImage image;    // A variable for the image file
float x, y;      // Variables for image location
float theta;     // A variable for image rotation

void setup() {
  size(800,600);
  
  // load image and initialize variables
  image = loadImage("trilobitas.jpg");
  theta = 0.0;
  x = 0;
  y = 300;
}

void draw() {
  background(255);
  
  // translate and rotate image
  translate(x,y);
  rotate(theta);
  
  // show image
  imageMode(CENTER);
  image(image,0,0);
  
  x++;
  theta += 0.02;
  
  if (x > width+image.width) {
    x = -image.width/2.0;
  }
}