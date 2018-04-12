
int r = 255;
int g = 0;
int b = 0;

void setup(){
  size(480, 270);
}

void draw(){
  background(r, g, b);
  stroke(255);
  line(width/2, 0, width/2, height);
  
  if( mouseX > width/2 ){  
    r++;
  }
  else{
    r--;
  }
  
  if (r > 255) {
    r = 255; 
  } else if (r < 0) {
    r = 0; 
  }
}