class Drop {
  float xPosition;
  float yPosition;
  float ySpeed = 4;
  float dropWidth = 10;
  float dropHeight = 20;

  Drop() {
    xPosition = random( width);
    yPosition = random(0,height);
    ySpeed = random(1.5,2);
  
  }
  void display() {
    fill(0,0,0, 50);
    noStroke();
   ellipse(xPosition+10, yPosition, random(18,26),random(20,25));
 
   fill(random(0,30), random(0,30), random(0,20));
   stroke(132, 55, 3);
   strokeWeight(0.5);
   ellipse(xPosition-7, yPosition+20, 23, 23);
   ellipse(xPosition-3, yPosition+20, 23, 25);
   ellipse(xPosition+2, yPosition+20, 23, 27);
   ellipse(xPosition+7, yPosition+20, 23, 25);
   ellipse(xPosition+12, yPosition+20, 23, 23);
   fill(0,0,0, 50);
   noStroke();
   ellipse(xPosition, yPosition, random(18,26),random(20,25));
    fill(47, 45, 0);
   noStroke();
   ellipse(xPosition+17, yPosition+20, 24, 24);
   
      fill(132, 55, 3);
   noStroke();
   ellipse(xPosition+20, yPosition+16, 6, 6);
   fill(0);
   noStroke();
   ellipse(xPosition+20, yPosition+16, 5.3, 5.3);
   fill(132, 55, 3);
   noStroke();
   ellipse(xPosition+19, yPosition+14, 2, 2);
    fill(0);
   noStroke();
   ellipse(xPosition+27, yPosition+25, 3, 3);
  }
  void move() {
    xPosition += ySpeed;


    if (xPosition > width) {
      //reset at top
      xPosition = 0;
      yPosition = random(width);
      ySpeed = random(3, 6);
    }
    
    //   if (yPosition > yPosition) {
    //  yPosition -= 4;
    //}
    
    
  }
}