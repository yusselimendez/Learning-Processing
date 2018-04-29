class Drop {
 float x = random(width);
 float y = random(-500, -50);
 float z = random(0, 20); 
 float len = map(z, 0, 20, 10, 20);
 float yspeed = map(z, 0, 20, 1, 10);
 
 void fall() {
   y = y + yspeed;
   //yspeed = yspeed +0.2;
   float grav = map(z, 0, 20, 0, 0.2);
   yspeed = yspeed + grav;
   
   if(y > height) {
      y = random(-200, -100);     
      yspeed = map(z, 0, 20, 1, 10);
   }
 }
 
  void show() {
    float thick = map(z, 0, 20, 1, 2);
    strokeWeight(thick);
    stroke(138, 43, 226);
    line(x, y, x, y + len); 
  }
}