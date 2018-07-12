class Meteor {
  PVector location;
  PVector target;
  PVector velocity;
  float distX;
  float distY;
  float dist;
  PImage img;
  float step;
  float z;
  float lifespan;
  
  Meteor() {
    img = loadImage("meteor.png");
    step = random(0.004, 0.008);
    z = random(width);
    setLocations();
    lifespan = 255.0;
  }
  
  void setLocations() {
    //location = new PVector(random(-width, width),random(-height/2, height/2));
    location = new PVector(random(-100, width), random(-height/2, height/6));
    //target = new PVector(location.x + 200 + random(width/2, width), location.y + random(height/2, height));
    target = new PVector(location.x + 200 + random(width/2, width), location.y + random(height, height/6));
    velocity = new PVector(0,0);
    distX = target.x - location.x;
    distY = target.y - location.y;
  }
  
  // Update position
  void fall() {
      velocity.x = distX * step;
      velocity.y = distY * step;
      location.add(velocity);
      lifespan -= 1.0;
  }
  
  // Stop moving
  void stop() {
    setLocations();
    velocity.mult(0);//clear velocity
  }
  
  // Show particle
  void display() {
    float r = map(z, 0, width, 5, 40);
      noTint();
      //image(img, location.x-20, location.y-20, r, r);
      fill(175);
      ellipse(location.x,location.y,16,16);
  }
  
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}