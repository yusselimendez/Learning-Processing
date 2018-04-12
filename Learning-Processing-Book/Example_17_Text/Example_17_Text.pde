PFont font1, font2, font3;

void setup() {
  size(200, 200);
    
  String[] fontList = PFont.list();
  printArray(fontList);
  
  font1 = createFont("Verdana", 32);
  font2 = createFont("Arial",20);
  font3 = createFont("Verdana",10);
}

void draw() {
  background(204);
  line(width/2, 0, width/2, height);
  
  fill(0);
  textFont(font1);
  textAlign(LEFT);
  text("LAX", width/2, 40);
  
  textFont(font2);
  textAlign(RIGHT);
  text("LHR", width, 70);
  
  textFont(font3);
  textAlign(CENTER);
  text("LHR", width/2, 70);
}