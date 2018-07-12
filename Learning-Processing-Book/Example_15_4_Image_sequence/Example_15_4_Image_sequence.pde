
// Example 15-4: Image sequence

int maxImages = 2, imageIndex = 0;
PImage[] images = new PImage[maxImages];

void setup(){ 
  size(800, 400);
  
 // load images
 for(int i=0; i<images.length; i++){
   images[i] = loadImage("era" + (i+1) + ".jpg"); 
 }
 
 //frameRate(5);
 // show initial image background
 imageIndex = int(random(images.length));
 image(images[imageIndex],0,0,width,height);
}

void draw(){
  background(0);
  
  // images are changing every two seconds
  if(frameCount % 120 == 0){
    // increment image index by one each cycle
    // use modulo " % "to return to 0 once the end of the array is reached
    imageIndex = (imageIndex + 1) % images.length;  
  }
  image(images[imageIndex],0,0,width,height);
}