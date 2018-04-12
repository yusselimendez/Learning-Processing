
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
  line(0, height/2, width, height/2);
  
  if( mouseX > width/2 ){  
    r++;
  }
  else{
    r--;
  }
  
  if( mouseY > height/2 ){  
    b++;
  }
  else{
    b--;
  }
  
  r = constrain(r,0,255);
  b = constrain(b,0,255);
}