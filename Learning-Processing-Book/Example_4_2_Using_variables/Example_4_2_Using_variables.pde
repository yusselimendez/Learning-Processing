
int circleX = 50;
int circleY = 50;
int rectX = 50;
int rectY = 50;
int high = 50;
int weight = 50;

void setup(){
  size(480, 270);  
}

void draw(){
  background(255);
  stroke(0);
  fill(150);  
  //rectMode(CENTER);
  
  rect(rectX, rectY, weight, high);
  ellipse(circleX, circleY, weight, high);
  
  circleX = circleX + 1;
  rectX ++;
}