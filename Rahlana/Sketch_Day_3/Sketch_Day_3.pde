float x=50, y=80, bsize=20, speed=5;
float x1=30, y1=120, b1size=20;
float r=10, b=4, g=20;

void setup(){
   size (800,500);
   background(255);

}

void draw() {
  
 background(255);
 rect(0,0,width,height);
  
 noStroke();
 fill(r,b,g);
 ellipse(x,y,random(100),random(200));
 
   x = x + speed;
  
  if (x > width || x < 0) {
    r = random(200);
    speed *= -1;
    
  }
  
 noStroke();
 fill(100,40,255,30);
 ellipse(x1,y1,random(100),random(200));
 
   x1 = x1 + speed;
  
  if (x1 > width || x1 < 0) {
    speed *= -1;
    
  }
  
 
 
 
 }
