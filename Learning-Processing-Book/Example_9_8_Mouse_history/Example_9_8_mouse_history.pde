
//Declare two arrays with 50 elements
int[] xpos = new int[50];
int[] ypos = new int[50];

void setup(){
  size(480,270);
  
  // Initialize all elements of each array to zero.
  for(int i = 0; i < xpos.length; i++){
    xpos[i] = 0;
    ypos[i] = 0;
  }
}

void draw(){
  background(150);
  
  // Shift all elements down one spot. 
    // xpos[0] = xpos[1], xpos[1] = xpos = [2], and so on. 
    // Stop at the second to last element.
  for(int i = 0; i < xpos.length - 1; i++){
    xpos[i] = xpos[i + 1];
    ypos[i] = ypos[i + 1];
  }
  
  // New location
  // Update the last spot in the array with the mouse location.
  xpos[xpos.length - 1] = mouseX;
  ypos[ypos.length - 1] = mouseY;
  
  // Draw everything
  for(int i = 0; i < xpos.length; i++){
    noStroke();
    fill(i * 4);
    ellipse(xpos[i], ypos[i], i, i); 
  }
  
  
  
}