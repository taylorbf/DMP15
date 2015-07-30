float flyX = 250;
float flyY = 200;
float flySpeed = 8;
float zapPow = 200;

void setup() {
  size(500,500);
}

void draw() {
  background(255);
  noStroke();
  smooth();
  fill(0,random(25,75));
  ellipse(flyX,flyY,random(8,40),random(8,15));
  fill(0);
  ellipse(flyX,flyY,random(8,10),random(8,10));
  flyX = flyX + random(-7,5);
  flyY = flyY + random(-5,7);
  if (flyX > width) {
    flyX = flyX - 200;
    background(255,255,0,50);
  }
  if (flyX < 0) {
      flyX = flyX + 200;
    background(255,255,0,50);
  }
  if (flyY > height) {
    flyY = flyY - 200;
    background(255,255,0,50);
  }
  if (flyY < 0) {
      flyY = flyY + 200;
     background(255,255,0,50);
  }
}
