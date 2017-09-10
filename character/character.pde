void setup() {
  size(800, 650);
  cursor(CROSS);
}
void draw() {
  background(25);
  
  int body = 160;
  int handHeight = 110;
  int handWidth = 80;
  float handY= 24.5;
  float handX= 79.5;
  int footSize = 70;
  int footY = 25;
  int eyeball = 25;
  int eye = 10;
  
  
  noStroke();
  fill(#ffe448);
  //hands
  ellipse(mouseX-handX,mouseY-handY, handWidth, handHeight);
  ellipse(mouseX+handX,mouseY-handY, handWidth, handHeight);
  //foot
  rect(mouseX-75, mouseY+footY, footSize, footSize);
  rect(mouseX+6, mouseY+footY, footSize, footSize);
  //hair
  rect(mouseX-67, mouseY-180, body/1.2, body/2);
  //
  stroke(150);
  strokeWeight(2);
  fill(40);
  //face
  rect(mouseX-73, mouseY-155, body/1.1, body/2);
  //body
  rect(mouseX-body/2, mouseY-body/2, body, body);
  //
  noStroke();
  fill(255);
  //eyes
  ellipse(mouseX, mouseY-130, eyeball, eyeball);
  ellipse(mouseX-40, mouseY-130, eyeball, eyeball);
  ellipse(mouseX+40, mouseY-130, eyeball, eyeball);
  noStroke();
  fill(20);
  //eyes
  ellipse(mouseX, mouseY-130, eye, eye);
  ellipse(mouseX-40, mouseY-130, eye, eye);
  ellipse(mouseX+40, mouseY-130, eye, eye);
  //
  stroke(#ffe448);
  strokeWeight(2);
  strokeCap(ROUND);
  //brow
  line(mouseX-60, mouseY-150, mouseX+60, mouseY-150);
  //
  noStroke();
  fill(#ffe448);
  //mouth
  ellipse(mouseX, mouseY-100, eye, eye);
  
}