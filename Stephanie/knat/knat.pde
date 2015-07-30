Gnat charlie = new Gnat();

void setup() {
 size(150,150);
 noStroke(); 
}

void draw() {
  background(255);
  charlie.fly();
  charlie.zap();
}

class Gnat {
  
 float flyX = 300;
 float flyY = 200;
 float flyAlpha = 255;
 float flySize = 5;
 
 Gnat() {
   
 }
  
 void fly () {  
  flyX = flyX + random(-3,3);
  flyY = flyY + random(-3,3);
  fill(0,flyAlpha);
  ellipse(flyX,flyY,flySize,flySize);
  //wings:
  //fill(0,random(25,75));
  //arc(flyX-1,flyY-2,random(5,25),flySize+2);
  //arc(flyX+1,flyY-2,random(5,25),flySize+2);
 }
  
  
 void zap () {
  if (flyX > width) {
   flyX = width/2;
   background(255,255,0); 
  }
  if (flyX < 0) {
    flyX = width/2;
    background(255,255,0);
  }
  if (flyY > height) {
   flyY = height/2;
  background(255,255,0); 
  }
  if (flyY < 0) {
    flyY = height/2;
    background(255,255,0);
  }
  }
}


