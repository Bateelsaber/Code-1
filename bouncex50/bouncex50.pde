// code from https://processing.org/examples/bouncybubbles.html

int numBalls = 100;
float speed = 0.4;
float friction = -0.5;
Ball[] balls = new Ball[numBalls];

void setup() {
  size(800, 500);
    
  for (int i = 0; i < numBalls; i++) {
    balls[i] = new Ball(random(width), random(height), 30, i, balls);
 noStroke();
 
}
 
}

void draw() {
  background(0,0,40);
  for (Ball ball : balls) {
    ball.collide();
    ball.move();
    ball.display(); 
    fill(0, 0,35);
    rect(325, 155, 100, 200);
  }
}

class Ball {
  
  float x, y;
  float diameter;
  float vx = 0;
  float vy = 0;
  int id;
  Ball[] others;
 
  Ball(float xin, float yin, float din, int idin, Ball[] oin) {
    x = xin;
    y = yin;
    diameter = din;
    id = idin;
    others = oin;
  } 
  
  void collide() {
    for (int i = id + 1; i < numBalls; i++) {
      float dx = others[i].x - x;
      float dy = others[i].y - y;
      float distance = sqrt(dx*dx + dy*dy);
      float minDist = others[i].diameter/2 + diameter/2;
      if (distance < minDist) { 
        float angle = atan2(dy, dx);
        float targetX = x + cos(angle) * minDist;
        float targetY = y + sin(angle) * minDist;
        float ax = (targetX - others[i].x) * speed;
        float ay = (targetY - others[i].y) * speed;
        vx -= ax;
        vy -= ay;
        others[i].vx += ax;
        others[i].vy += ay;
      }
       if (y> 130 && y< 375 && x > 305 && x < 445){
           float targetX = x + cos(friction) ;
        float targetY = y + sin(friction) ;
        float ax = (targetX - others[i].x) *0.005 * speed;
        float ay = (targetY - others[i].y) *0.005* speed;
        vx -= ax*-1;
        vy -= ay*-1;
     
          } 
    }  
     
  }
  
  void move() {
    
    x += vx;
    y += vy;
     
     if (y> 130 && y< 380 && x > 300 && x < 450){
      vx *= speed*-1 ;
      vy *= speed*-1;
     
          } 
     
    if (x + diameter/2 > width) {
      x = width - diameter/2;
      vx *= friction; 
    }
    else if (x - diameter/2 < 0) {
      x = diameter/2;
      vx *= friction;
    }
    if (y + diameter/2 > height) {
      y = height - diameter/2;
      vy *= friction; 
    } 
    else if (y - diameter/2 < 0) {
      y = diameter/2;
      vy *= friction;
    }
    
  }
  void display() {
   fill(170, 200, 190); 
    ellipse(x, y, diameter, diameter);
  }
}