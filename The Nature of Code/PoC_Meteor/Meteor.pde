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
  
  Meteor() {
    img = loadImage("meteor.png");
    step = random(0.004, 0.008);
    z = random(width);
    setLocations();    
  }
  
  void setLocations() {
    location = new PVector(random(-width, width),random(-height/2, height/2));
    target = new PVector(location.x + 200 + random(width/2, width), location.y + random(height/2, height));
    velocity = new PVector(0,0);
    distX = target.x - location.x;
    distY = target.y - location.y;
  }
  
  // Update position
  void fall() {
    dist = location.dist(target);
    println(dist);
    if (dist > 1.0) {
      velocity.x = distX * step;
      velocity.y = distY * step;
      location.add(velocity);
    }
    else {   
      stop();
    }
  }
  
  // Stop moving
  void stop() {
    setLocations();
    velocity.mult(0);//clear velocity
  }
  
  // Show particle
  void display() {
    float r = map(z, 0, width, 5, 40);
    if (dist > 1.0) {
      noTint();
      image(img, location.x, location.y, r, r);
    }
  }
}