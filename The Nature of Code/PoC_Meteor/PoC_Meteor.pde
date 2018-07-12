
int numMeteors = 20;
ArrayList<Meteor> meteors = new ArrayList();

void setup() {
  size(700, 700);
  noStroke();
  smooth();
  for(int i = 0; i < numMeteors; i++) {
    meteors.add(new Meteor());
  }
}

void draw() {
  background(0);
  
  for(int i = 0; i < meteors.size(); i++) {
    Meteor p = (Meteor)meteors.get(i);
    p.fall();
    p.display();
  }
}