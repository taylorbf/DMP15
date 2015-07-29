float flyX = 300;
float flyY = 200;
float flyAlpha = 255;
float flySize = 5;

void setup() {
 size(150,150);
 noStroke(); 
}

void draw() {
  background(255);
  fill(0,flyAlpha);
  ellipse(flyX,flyY,flySize,flySize);
  //wings
  //fill(0,random(25,75));
  //ellipse(flyX,flyY-2,random(5,25),flySize+2);
  flyX = flyX + random(-3,3);
  flyY = flyY + random(-3,3);
  
  if (flyX > width) {
   flyX = flyX - 20;
   background(255,255,0); 
  }
  if (flyX < 0) {
    flyX = flyX + 20;
    background(255,255,0);
  }
  if (flyY > height) {
   flyY = flyY - 20;
  background(255,255,0); 
  }
  if (flyY < 0) {
    flyY = flyY + 20;
    background(255,255,0);
  }
}
