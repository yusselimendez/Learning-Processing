
class Particle {
  float x, y; // The x- and y-coordinates
  float vx, vy; // The x- and y-velocities
  float radius; // Particle radius
  //float gravity = 0.05;
  float gravity = random(0.04, 0.08);
  
  Particle(int xpos, int ypos, float velx, float vely, float r) {
    x = xpos;
    y = ypos;
    vx = velx;
    vy = vely;
    radius = r;
  }
  
  void update() {
    vy += gravity;
    y += vy;
    x += vx;
  }
  
  void display() {
    fill(255, 100, 0, 80);
    ellipse(x, y, radius*2, radius*2);
  }
}