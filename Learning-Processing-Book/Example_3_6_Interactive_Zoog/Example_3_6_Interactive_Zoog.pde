// Example 3-6: Interactive Zoog
void setup(){
  size(480, 270);
}

void draw(){
  background(255);
  ellipseMode(CENTER);
  rectMode(CENTER); 
  
  // Body
  stroke(0);
  fill(150);
  //rect(240, 145, 20, 100);
  rect(mouseX, mouseY, 20, 100);
  
  // Head
  fill(255);
  //ellipse(240, 115, 60, 60);
  ellipse(mouseX, mouseY-30, 60, 60);
  
  // Eyes
  //fill(0);
  fill(mouseX/2, 0, mouseY/2);
  //ellipse(220, 110, 20, 30);
  ellipse(mouseX-20, mouseY-25, 20, 30);
  //ellipse(260, 110, 20, 30);
  ellipse(mouseX+20, mouseY-25, 20, 30);
  
  // Legs
  stroke(0);
  //line(230, 195, 220, 205);
  line(mouseX-10, mouseY+50, pmouseX-10, pmouseY+60);
  //line(250, 195, 260, 205);  
  line(mouseX+10, mouseY+50, pmouseX+10, pmouseY+60);
}