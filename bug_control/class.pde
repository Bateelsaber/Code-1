class Drop {
  float xPosition;
  float yPosition;
  float ySpeed = 4;
  float dropWidth = 10;
  float dropHeight = 20;
  float countUpX = 0;
float countUpY = 0;

  Drop() {
    xPosition = random( -50,-100);
    yPosition = random(0,height);
    ySpeed = random(1,5);
  
  }
  void display() {
    fill(0,0,0, 50);
    noStroke();
   ellipse(sin(countUpX) * 20 +xPosition+10, cos(countUpY) * 20 +yPosition, random(18,26),random(20,25));
 
   fill(random(0,30), random(0,30), random(0,20));
   stroke(132, 55, 3);
   strokeWeight(0.5);
   ellipse(sin(countUpX) * 20 +xPosition-7, cos(countUpY) * 20 +yPosition+20, 23, 23);
   ellipse(sin(countUpX) * 20 +xPosition-3, cos(countUpY) * 20 +yPosition+20, 23, 25);
   ellipse(sin(countUpX) * 20 +xPosition+2, cos(countUpY) * 20 +yPosition+20, 23, 27);
   ellipse(sin(countUpX) * 20 +xPosition+7, cos(countUpY) * 20 +yPosition+20, 23, 25);
   ellipse(sin(countUpX) * 20 +xPosition+12, cos(countUpY) * 20 +yPosition+20, 23, 23);
   fill(0,0,0, 50);
   noStroke();
   ellipse(sin(countUpX) * 20 +xPosition, cos(countUpY) * 20 +yPosition, random(18,26),random(20,25));
    fill(47, 45, 0);
   noStroke();
   ellipse(sin(countUpX) * 20 +xPosition+17, cos(countUpY) * 20 +yPosition+20, 24, 24);
   
      fill(132, 55, 3);
   noStroke();
   ellipse(sin(countUpX) * 20 +xPosition+20, cos(countUpY) * 20 +yPosition+16, 6, 6);
   fill(0);
   noStroke();
   ellipse(sin(countUpX) * 20 +xPosition+20, cos(countUpY) * 20 +yPosition+16, 5.3, 5.3);
   fill(132, 55, 3);
   noStroke();
   ellipse(sin(countUpX) * 20 +xPosition+19, cos(countUpY) * 20 +yPosition+14, 2, 2);
    fill(0);
   noStroke();
   ellipse(sin(countUpX) * 20 +xPosition+27, cos(countUpY) * 20 +yPosition+25, 3, 3);
    countUpX -= random(.09, .05);
  countUpY -= random(.09, .05);
  }
  void move() {
    if (spaceKeyDown == true) {
   
    xPosition += ySpeed;}
    
    if (spaceKeyDown == false) {
   
    yPosition += ySpeed*3;}
    
 if (rKeyDown == true) {
   
    xPosition -= ySpeed;}


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