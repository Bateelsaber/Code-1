
var mic, x ,y;



function setup() {

  createCanvas(windowWidth-100, windowHeight-70);
  mic = new p5.AudioIn();
  amplitude = new p5.Amplitude();
ellipseMode(CENTER);
rectMode(CENTER);
  mic.start();
background(0, 0, 30);
}

function draw() {
  // background(0, 0, 30);

  var vol = mic.getLevel();

  stroke(230, 230, 255, 50);
  strokeWeight(0.1)*vol;

  var level = amplitude.getLevel();
  var size = map(level, 0, 1, 0, 200);
  var h = map(vol, 0, 1, height, 20);
  var noiseFrequency = .05*vol;
translate(windowWidth*0.5, windowHeight*0.4);
var test = vol* (millis()*0.05);


if (vol > 0.001){
      for (x =-650; x < 850 ; x+=35) {
        for (y =-295; y < 550 ; y+=35) {
var n = noise(x*.002, y*.001);
fill(255, 255, 255, 50)
// rect(10*x*sin(x*20*n)+10*n*vol, 10*x*cos(x*20*n)+10*n*vol, 3, 10);
// rotate(PI/0.6*vol);
// rect(x*vol, y*vol, 20, 20);

stroke( 255, 255, 255);
strokeWeight(0.01*vol*test);
noFill();


ellipse(x, y, 180*vol, 180*vol);

stroke(50+test*vol, test*0.5, 0.90*test);
strokeWeight(0.005*test);
noFill();


ellipse(x, y, 980*vol, 980*vol);

rect(x, y, random(160)*vol, random(160)*vol);
// ellipse(x, y, 10, 10)
//
// rect(x, y, 12, 12)

}
}
}
else if (vol > 0.35){
      for (x =-650; x < 850 ; x+=35) {
        for (y =-295; y < 550 ; y+=35) {
var n = noise(x*.002, y*.001);
fill(255, 255, 255, 50)
// rect(10*x*sin(x*20*n)+10*n*vol, 10*x*cos(x*20*n)+10*n*vol, 3, 10);
// rotate(PI/0.6*vol);
// rect(x*vol, y*vol, 20, 20);

stroke( 255, test*1.5, test*50);
strokeWeight(0.01*vol*test);
noFill();


ellipse(x, y, 1400*noiseFrequency, 1400*vol);

stroke(test*test*20, 1.5*test,test*3);
strokeWeight(0.5);
noFill();


ellipse(x, y, random(80)*noiseFrequency, random(800)*vol);

rect(x, y, 480*test, 480*test);
// ellipse(x, y, 10, 10)
//
// rect(x, y, 12, 12)

}
}
}


//
//
//
//       noStroke();
//
// for (i = 0; i < 5000; i+=.3) {
//    fill(255, 255, 255, 30);
//   x =  noise(i * noiseFrequency, millis() * .0005*vol) * windowWidth;
//   y = noise(i * noiseFrequency*vol, 200) * windowHeight;
//
// var diameter = i*.002;
//
// rect(x-560, y-300, diameter, diameter);
// }
}
