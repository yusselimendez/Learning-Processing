// Example 3-4: Drawing a continuous line

void setup(){
  size(480, 270);
  background(255);
}

void draw(){
  
  rectMode(CENTER);
  
  stroke(0);
  fill(150);
  //rect(240, 100, 200, 50);
  //rect(mouseX, mouseY, 50, 50);
  line(pmouseX, pmouseY, mouseX, mouseY);
}