float row = 25;
float bubbles = pow(row,2);
float size;

void setup() {
  size(500,500);
  size = width/row;
}

void draw() {
  background(0);
   
   if (mouseX >= 250) {
     for (float i=0;i<bubbles;i++) {
   
      float x = (i%row) * size;
      float y = int(i/row) * size;
      
      fill(random(mouseX),random(mouseY),255,100);
      ellipse(x,y,size,size);
     }
     
   }
   if (mouseX < 250) {
     for (int i=0; i<10; i=i+1) {
       fill(mouseY/2,mouseX/2,192);
       rect(mouseX,i*mouseY,25,25);
      
     }
     
   }
   if (mouseY >= 250) {
     for (float i=0;i<bubbles;i++) {
   
       float x = (i%row) * size;
       float y = int(i/row) * size;
    
       fill(random(mouseX),random(mouseY),255,100);
       rect(x,y,size,size);
     }
   }
   if (mouseX < 250 && mouseY < 250) {
     fill(random(mouseX),random(mouseY),255,100);
     rect(0,0,width,height);
   }
}
