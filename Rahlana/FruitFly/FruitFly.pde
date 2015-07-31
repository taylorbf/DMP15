//class
Gnat charlie = new Gnat(255, 50, 100);
Gnat chuck = new Gnat(100,150,30);

void setup() {
  size(100,100);
  noStroke();
}

void draw() {
   background(255);
   //function
   charlie.fly();
   charlie.zap();
   chuck.fly();
   chuck.zap();
  
}

class Gnat{
  float flyX = 50;
  float flyY = 50;
  float flyAlpha = 255;
  float flySize = 5;
  float flyRed = 0;
  float flyGreen = 0;
  float flyBlue = 0;
  
  Gnat(int r, int g, int b){
 // code here will happen once
 // when instance is created
  flyRed = r;
  flyGreen = g;
  flyBlue = b;
 
 
   
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

