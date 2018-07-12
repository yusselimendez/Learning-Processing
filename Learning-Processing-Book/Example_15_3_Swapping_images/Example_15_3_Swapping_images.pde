
// Example 15-3: Swapping images

int maxImages = 3, imageIndex = 0;
PImage[] images = new PImage[maxImages];

void setup(){ 
  size(800, 300);
  
 // load images
 for(int i=0; i<images.length; i++){
   images[i] = loadImage("era" + (i+3) + ".jpg"); 
 }
}

void draw(){
  background(0);
  
  // show background image  
  image(images[imageIndex],0,0,width,height);
}

void mousePressed(){
  imageIndex = int(random(images.length));
}