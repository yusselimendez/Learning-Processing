
import processing.video.*;
Movie myMovie;
Timer timer;

void setup() {
  size(640, 360);
  background(0);
  myMovie = new Movie(this, "transit.mov");
  myMovie.play();
  timer = new Timer(5000);
  timer.start();
}

void draw() {
  if (timer.isFinished()) {
    //background(random(255));
    if (myMovie.available()) {
      myMovie.read();  
    }  
    image(myMovie, 0, 0, width, height);
    //timer.start();
  }
}