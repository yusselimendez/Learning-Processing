float r, g, b;
float x, y, d;

void setup(){
  size(480, 270);
  background(255);
}

void draw(){
  r = random(255);
  g = random(255);
  b = random(255);
  x = random(width);
  y = random(height);
  d = random(20);
  
  noStroke();
  fill(r, g, b);  
  ellipse(x, y, d, d);
}

void keyPressed(){
 background(255); 
}