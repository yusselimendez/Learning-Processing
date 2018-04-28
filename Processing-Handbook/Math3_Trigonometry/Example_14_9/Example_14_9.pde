
size(700, 100);
//noStroke();

float offset = 50;
float scaleVal = 30;
float angleInc = PI/56.0;
float angle = 0.0;

beginShape(QUAD_STRIP);
for(int x = 4; x <= width + 5; x += 5){  
   float y = sin(angle) * scaleVal;
   //println("x: " + x + " y: " + y);
   if((x % 2) == 0){
     vertex(x, offset + y);
     println("x: " + x + " y: " + (offset + y));
   } else {
     vertex(x, offset - y);
     println("x: " + x + " y: " + (offset - y));
   }  
   angle += angleInc;
}
endShape();