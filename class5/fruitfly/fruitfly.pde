float flyX = 50;
float flyY = 50;
float flyAlpha = 255;
float flySize = 5;

void setup() {
  size(100,100);
  noStroke();
}

void draw() {
   background(255);
   fill(0,flyAlpha);
   ellipse(flyX,flyY,flySize,flySize);
   fly();
   zap(50,50);
}

void fly() {
   flyX = flyX + random(-3,3);
   flyY = flyY + random(-3,3); 
}

void zap(newX, newY) {
  //something happens in here
  
   if (flyX > width) {
      flyX = newX;
      background(255,255,0);
   }
   if (flyX < 0) {
      flyX = newX;
      background(255,255,0);
   }
   if (flyY > height) {
      flyY = newY;
      background(255,255,0);
   }
   if (flyY < 0) {
      flyY = newY;
      background(255,255,0);
   }
}




