
class Particle {
  float x, y; // The x- and y-coordinates
  float vx, vy; // The x- and y-velocities
  float radius; // Particle radius
  //float gravity = 0.05;
  float gravity = random(0.04, 0.08);
  
  //Declare two arrays with 50 elements
  float[] xpos = new float[50];
  float[] ypos = new float[50];
  
  Particle(int xpos, int ypos, float velx, float vely, float r) {
    x = xpos;
    y = ypos;
    vx = velx;
    vy = vely;
    radius = r;
  }
  
  void initialize() {
    // Initialize all elements of each array to zero.
    for(int i = 0; i < xpos.length; i++){
      xpos[i] = 0.0;
      ypos[i] = 0.0;
    }
  }
  
  void update() {
    vy += gravity;
    y += vy;
    x += vx;
    
    for(int i = 0; i < xpos.length - 1; i++){
      xpos[i] = xpos[i + 1];
      ypos[i] = ypos[i + 1];
    }
    // Update the last spot in the array
    xpos[xpos.length - 1] = x;
    ypos[ypos.length - 1] = y;
  }
  
  void display(float colors) {
    // Draw everything
    for(int i = 0; i < xpos.length; i++){
      noStroke();
      float opacity = random(i , i * 2);
      fill(255, colors, 0, opacity);
      ellipse(xpos[i], ypos[i], 5, 5); 
    }
    //fill(255, 100, 0, 80);
    //ellipse(x, y, radius*2, radius*2);
  }
}