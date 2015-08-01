//class
Gnat[] swarm = new Gnat[100];

void setup() {
  size(100,100);
  noStroke();
  for (int i = 0; i <  swarm.length; i++) {
  swarm[i] = new Gnat();
  
  }
}

void draw() {
   background(255);
   //function
  for (int i = 0; i <  swarm.length; i++) {
  swarm[i].fly();
  
  }
  
}

class Gnat{
  float flyX = 50;
  float flyY = 50;
  float flyAlpha = 255;
  float flySize = 5;
  float flyRed = 0;
  float flyGreen = 0;
  float flyBlue = 0;
  
  Gnat(){
 // code here will happen once
 // when instance is created
 
 
 
   
  }
  
  void fly() {
   flyX = flyX + random(-3,3);
   flyY = flyY + random(-3,3); 
   fill(flyGreen,flyAlpha);
   ellipse(flyX,flyY,flySize,flySize);
}

void zap() {  
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

