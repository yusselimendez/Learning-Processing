
// import the MQTT library
import mqtt.*;
// declare a MQTT client
MQTTClient client;

int rectX, rectY;      // Position of square button
int circleX, circleY;  // Position of circle button
int rectSize = 90;     // Diameter of rect
int circleSize = 93;   // Diameter of circle
color rectColor, circleColor, baseColor;
color rectHighlight, circleHighlight;
color currentColor;
boolean rectOver = false;
boolean circleOver = false;

void setup() {
  size(250, 250);
  rectColor = color(0);
  rectHighlight = color(51);
  circleColor = color(255,255,0);
  circleHighlight = color(204);
  baseColor = color(102);
  currentColor = baseColor;
  circleX = width/2+circleSize/2+10;
  circleY = height/2;
  rectX = width/2-rectSize-10;
  rectY = height/2-rectSize/2;
  ellipseMode(CENTER);
  
  // we create an instance of the MQTTClient by passing a reference to your current sketch
  client = new MQTTClient(this);
  // connect to shiftr.io by passing your namespace on shiftr.io and the clientId
  // which will be displayed as the connections name in the real-time graph
  client.connect("mqtt://f440809f:cc3edb6fcbc3bff1@broker.shiftr.io", "processing");
}

void draw() {
  update(mouseX, mouseY);
  background(currentColor);
  
  if (rectOver) {
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  stroke(255);
  rect(rectX, rectY, rectSize, rectSize);
  
  if (circleOver) {
    fill(circleHighlight);
  } else {
    fill(circleColor);
  }
  stroke(0);
  ellipse(circleX, circleY, circleSize, circleSize);
}

void update(int x, int y) {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
    rectOver = false;
  } else if ( overRect(rectX, rectY, rectSize, rectSize) ) {
    rectOver = true;
    circleOver = false;
  } else {
    circleOver = rectOver = false;
  }
}

// client.publish("/SimpleLed", "1");
// The first argument is the topic to publish the message to.
// The second argument is the payload of the message.

void mousePressed() {
  if (circleOver) {
    currentColor = circleColor;
    client.publish("/SimpleLed", "1");
  }
  if (rectOver) {
    currentColor = rectColor;
    client.publish("/SimpleLed", "0");
  }
}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}