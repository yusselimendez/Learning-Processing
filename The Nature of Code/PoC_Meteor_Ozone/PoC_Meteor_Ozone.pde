import java.awt.Rectangle;

int numMeteors = 20;
ArrayList<Meteor> meteors = new ArrayList();
PImage img;

Rectangle ozoneLayer;

void setup() {
  size(1000, 700);
  noStroke();
  smooth();
  ozoneLayer = new Rectangle(0, height/6, width, 5);
  //img = loadImage("background.png");
}

void draw() {
  background(0);
  //image(img, 0, 0, width, height);
  fill(0,0,255,63);
  rect(ozoneLayer.x, ozoneLayer.y, ozoneLayer.width, ozoneLayer.height);
  
  if(frameCount % 10 == 0) {
    meteors.add(new Meteor());
  }
  
  for(int i = 0; i < meteors.size(); i++) {
    Meteor p = (Meteor)meteors.get(i);
    p.fall();
    p.display();
    
    if (ozoneLayer.contains(p.location.x, p.location.y)) { 
      p.stop();
    }
    if (p.isDead()) {
      meteors.remove(i);
    }
  }
}