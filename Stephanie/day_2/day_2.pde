int x = 50;
void setup() {
  size(500,500);
}

void draw() {
  
  fill(0);
  
  if(mousePressed) {
    //line(0,0,mouseX,mouseY);
    //line(mouseX,mouseY,width/2,height/2);
    ellipse(width/2, height/2, x, x);
    
    x = x + 4;
  }
  
  fill(255,100,0);
  if(keyPressed) {
   ellipse(width/2, height/2, x, x);
  
  x = x - 4; 
  }
  
}
