// Example 1-1: stroke and fill
size(480, 270);
background(100);


// noFill() leaves the shape with only an outline.
noFill();
stroke(0);
ellipse(10, 10, 100, 100);


noStroke(); 
fill(0);
rect(100, 100, 50, 100);

fill(255,0,0);
ellipse(200 ,50 , 40, 40);

fill(0,255,0);
ellipse(250 ,50 , 40, 40);

fill(0,0,255);
ellipse(300 ,50 , 40, 40);