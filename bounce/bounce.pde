float elX = 70;
float elY = 20;
float elDiameter = 20;
float elDiameter1 = 50;

boolean balls = false;
boolean ball1 = false;


float elXSpeed = 3.5;
float elYSpeed = 3.5;

float lineY = 300;
float lineX = 350;


void setup() {
  size(500, 400);
  cursor(CROSS);
  ellipseMode(CENTER);
}

void draw() {
  
  
  background(220, 220, 230);
  if (balls == true) {
noStroke();
  fill(250, 250, 250, 250);
  elX += elXSpeed;

  //elY += elYSpeed;
  elY = elY + elYSpeed;
   
  ellipse(elX, elY, elDiameter, elDiameter);
  
    if ((elY > lineY) || (elY<5))  {
    // move up if you go passed the line
    elYSpeed = elYSpeed * -1;
  }  
    if ((elX > lineX) || (elX < 5)) {
    // move up if you go passed the line
    elXSpeed = elXSpeed * -1;
  } 
  } 
   fill(250, 255, 255);
noStroke();
   ellipse(175, 155, elDiameter1, elDiameter1);
   
   rect( mouseX-20, mouseY-20, 40,40);
  
      if (elY > 155 && elY< 155+elDiameter1 && elX > 175 && elX < 175+elDiameter1)  {
    // move up if you go passed the line
    elYSpeed = elYSpeed * -1;
     elXSpeed = elXSpeed * -1;
       fill(25, 255, 255);
         noStroke();
     ellipse(175, 155, elDiameter1, elDiameter1);
  } 
  
        if (elY > mouseY-20 && elY<mouseY+20 && elX >mouseX-20 && elX <mouseX+20)  {
    // move up if you go passed the line
    elYSpeed = elYSpeed * -1;
     elXSpeed = elXSpeed * -1;
       fill(250, 25, 255);
         noStroke();
    ellipse(175, 155, elDiameter1, elDiameter1);
  } 


  
  fill(250, 255, 255);
  noStroke();
  rect(0, lineY, width, 100);
  rect(lineX, 0, 200, height);
   rect(0, 0, width, 5);
  rect(0, 0, 5, height);  
  }
  
  void mousePressed() {
   if (mouseX > 150 && mouseX < 200 ) {
    if (130< mouseY && mouseY <180 ) {
        balls = true ;
         fill(20, 255, 255);
         noStroke();
        ellipse(175, 155, elDiameter1, elDiameter1);
    } else {
     balls = false ;
         noFill();
         stroke(100,100,100);
       ellipse(175, 155, elDiameter1, elDiameter1);
    }
   }
  
 

  }