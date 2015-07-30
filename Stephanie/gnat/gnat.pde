Gnat charlie = new Gnat();
Gnat frankie = new Gnat();
Gnat jeanie = new Gnat();
Gnat benny = new Gnat();

void setup() {
 size(300,300);
 //noStroke(); 
}

void draw() {
  charlie.fly();
  charlie.zap();
  frankie.fly();
  frankie.zap();
  jeanie.fly();
  jeanie.zap();
  benny.fly();
  benny.zap();
  stroke(222,222,222);
  noFill();
  line(charlie.flyX,charlie.flyY,frankie.flyX,frankie.flyY);
  stroke(50);
  ellipse(jeanie.flyX,benny.flyY,random(100),random(100));
  stroke(242,46,233);
  line(benny.flyX,jeanie.flyY,charlie.flyX,frankie.flyY);
}

class Gnat {
  
 float flyX = 300;
 float flyY = 200;
 float flyAlpha = 50;
 float flySize = 5;
 
 Gnat() {
   
 }
  
 void fly () {  
  flyX = flyX + random(-10,10);
  flyY = flyY + random(-10,10);
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
   background(255,160,70); 
  }
  if (flyX < 0) {
    flyX = width/2;
    background(136,44,255);
  }
  if (flyY > height) {
   flyY = height/2;
  background(155,255,79); 
  }
  if (flyY < 0) {
    flyY = height/2;
    background(201);
  }
  }
}


