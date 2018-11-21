
import processing.video.*;
Movie myMovie;
Timer timer;
int time = 3000;

void setup() {
  size(displayWidth,displayHeight);
  background(0);
  myMovie = new Movie(this, "video.mov");
  
  timer = new Timer(time);
  timer.start();
}

void draw() {
  if (timer.isFinished()) {
    displayVideo();
  }
}

void displayVideo() {  
  myMovie.play();  
  if (myMovie.available()) {
     myMovie.read();
     image(myMovie, 0, 0, width, height);
  }
}
