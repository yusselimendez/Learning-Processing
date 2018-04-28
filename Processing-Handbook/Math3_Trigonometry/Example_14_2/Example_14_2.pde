/*void setup() {
  size(200,200); 
}

void draw() {
  println(PI);
}*/


float r1 = radians(90);
float r2 = radians(180);
println(r1);
println(r2);

float d1 = degrees(PI);
float d2 = degrees(TWO_PI);
println(d1);
println(d2);

for(float angle = 0; angle < TWO_PI; angle += PI/24.0){
  float newValue = map(sin(angle), -1, 1, 0, 1000);
   println(newValue);
}

size(700, 100);
noStroke();
//smooth();
//fill(0);

float offset = 50;
float scaleVal = 35;
float angleInc = PI/20.0;
float angle = 0.0;
float y;

for(int x = 0; x <= width; x += 5){  
   y = offset + (sin(angle) * scaleVal);
   fill(0);
   rect(x, y, 2, 4);   
   y = offset + (cos(angle) * scaleVal);
   fill(255);
   rect(x, y, 2, 4);   
   angle += angleInc;
}