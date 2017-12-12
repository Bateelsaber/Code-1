//import processing.pdf.*;
void setup() {
  size (1100, 650);
  //size(1300, 800, PDF, "print.pdf");
  ellipseMode(CENTER);
  noLoop();
}

void draw() {
  background(255);
  //for loop for ellipses in x and y axis
    for (int y = 1; y < 1000; y += 6) {
    for (int x = 0; x < 2200; x += 1) {
  //noise
    float  n = noise(x*0.003, y*.001);
  //different ellipse size within a range 
    float diameter = random(0.3, 5);
  //draw ellipse
noStroke();
fill(10,20, 70);
ellipse(x*cos(n*0.8)*0.7, y-300*n-50*sin(n*0.05)*cos(n*0.2)*5*n+n, random(diameter)+n, random(diameter));

}
  } 
 
 //   exit(); 
}