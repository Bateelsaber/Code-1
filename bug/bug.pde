Drop myDrop = new Drop();
Drop a = new Drop();

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
  
  for (int i=0; i<allthedrops.length; i++) {
    allthedrops[i].display();
    allthedrops[i].move();
    fill(20, 20, 20, 40);
    ellipse(random(width), random(height), 5,5);
  }
  
  a.display();
  a.move();
  myDrop.display();
  myDrop.move();
}