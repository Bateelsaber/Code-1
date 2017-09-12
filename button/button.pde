boolean drawASquare = true;
boolean drawCircles = false;
int rectX = -100;
int C = 50;

void setup() {
  size(600, 550);
}
void draw() {

  
  if (drawASquare == true) {
   stroke(180);
     fill(220, 252, 255);
     rect(260, 230, 70, 70);
     
       if (mouseX > 270 && mouseX < 325 ) {
    if (240< mouseY && mouseY <290 ) {
        fill(205);
     rect(260, 230, 70, 70); 
  }     
    }

  }
 
       if (drawCircles == true) {
       
    noFill();
     stroke(110);
     rectX+=4;
     ellipse(rectX, 520/2, 90, 590);
     ellipse(rectX*.9, 520/2, 90, 590);
}
}
void mouseClicked() {
   if (mouseX > 270 && mouseX < 325 ) {
    if (240< mouseY && mouseY <290 ) {
        drawCircles = true;
         if (drawASquare == true) {
    drawASquare = false;
  }     
    }

  }
}