Gnat charlie = new Gnat();
Gnat chuck = new Gnat();

void setup() {
  size(100,100);
  
}

void draw() {
   background(255);
   
   charlie.fly();
   charlie.zap();
   chuck.fly();
   chuck.zap();
   line(charlie.flyX,charlie.flyY, chuck.flyX,chuck.flyY);
  
}

class Gnat{
  float flyX = 50;
  float flyY = 50;
  float flyAlpha = 255;
  float flySize = 5;
  
  Gnat(){
 // code here will happen once
 // when instance is created
   
  }
  
  void fly() {
   flyX = flyX + random(-3,3);
   flyY = flyY + random(-3,3); 
   fill(0,flyAlpha);
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
