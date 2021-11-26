Effect e1, e2, e3;

PImage img;
PGraphics graphics;

void setup() {
 size(800,800,P2D);
 img = loadImage("Stunned.jpg");
 graphics = createGraphics(img.width,img.height,P2D);
 e1 = new Effect(400,255);
 e2 = new Effect(200,255);
 e3 = new Effect(600,255);
}

void draw() {
  background(127);
  noStroke();
  image(img,65,30);
  
  e1.grayGraphics();
  e1.circles();
  
  e2.thresholdGraphics();
  e2.circles();
  
  e3.invertGraphics();
  e3.circles();
}
