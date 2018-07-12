
PImage image;

void setup(){ 
  size(800, 300);
  
 // load image
 image = loadImage("paleozoica2.jpg");
}

void draw(){
  background(0);
  
  // show background image
  image(image,0,0,width,height);
}