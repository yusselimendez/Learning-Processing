void setup(){
  size(480, 270);
}

void draw(){
  background(255);
  stroke(0);
  fill(frameCount/2);
  rectMode(CENTER);
  rect(width/2,height/2, mouseX+10, mouseY-10);
}