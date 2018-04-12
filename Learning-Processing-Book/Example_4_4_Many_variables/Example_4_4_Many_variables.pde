float circleX = 50;
float circleY = 50;
float rectX = 50;
float rectY = 50;
float high = 50;
float weight = 50;
int backgroundColor = 255;
float strokeColor = 0;
float fillColor = 150;
float change = 0.5;

void setup(){
  size(480, 270);  
}

void draw(){
  background(backgroundColor);
  stroke(strokeColor);
  fill(fillColor);
  //rectMode(CENTER);
  
  rect(rectX, rectY, weight, high);
  ellipse(circleX, circleY, weight, high);
  
  circleX = circleX + change;
  circleY = circleY + change;
  rectX += change;
  rectY += change;
  high += change;
  weight -= change;
  strokeColor = strokeColor - change;
  fillColor = fillColor + change;
}