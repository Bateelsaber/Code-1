Drop myDrop = new Drop();
Drop a = new Drop();
boolean spaceKeyDown = false;
boolean bKeyDown = false;
boolean rKeyDown = false;

Drop[] allthedrops = new Drop[60];
// initialize the Array for drops, but not the drops themselves. 

void setup () {
  size(600, 400);
  //noStroke();
   
  for (int i=0; i<allthedrops.length; i++) {
    //must initialize the drops
    allthedrops[i] = new Drop();
  }
  smooth();
}
void draw() {
  background(150, 180, 155);
  if (bKeyDown) {
  background(random(200,240), random(200,240), random(200,240));}
 
  for (int i=0; i<allthedrops.length; i++) {
    allthedrops[i].display();
    allthedrops[i].move();
    fill(20, 20, 20, 40);
    ellipse(random(width), random(height), 5,5);
  }
    if (spaceKeyDown) {
  a.display();
  a.move();
  myDrop.display();
  myDrop.move();}
};
 

void keyPressed() {
  if (key == ' ') {
    spaceKeyDown = true;
  }
  if (key == 'b') {
    bKeyDown = true;  
  }
  if (key == 'r') {
    rKeyDown = true;  
  }

}

void keyReleased() {
 if (key == ' ') {
    spaceKeyDown = false;
  }
  if (key == 'b') {
    bKeyDown = false;
  }
  if (key == 'r') {
    rKeyDown = false;
  }
}