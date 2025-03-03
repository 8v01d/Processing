int xamt = 22; 

float startNumber;

float RotAngle;

PFont font;

void setup() {
  size(500, 500, P3D);
  frameRate(12);
  shapeMode(CENTER);
  background(0);
}

void draw() {
  background(0);
  noFill();
  stroke(255); 

  startNumber -= 2;
  float number = startNumber;

  RotAngle -= 0.05;
  float Rots = RotAngle; 

  for (int x = 0; x < width*4; x += xamt) {    
    pushMatrix();
    translate(width/2, height/2);
    beginShape();
    ellipse(number+x, number+x, number+x, 100);
    endShape();
    popMatrix();
  }

  font = loadFont("04b03-8.vlw");
   textFont(font, 8);
  String s = "http://www.youtube.com/user/8v01d";
  fill(255);
  text(s, 3, height-6);  
 

//  saveFrame("export/seq-00##.tif");
}
