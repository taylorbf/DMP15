/* Iteration example - BT */

float row = 20; // how many rows
float bubbles = pow(row,2); // or try 10000 to make some noise
float size;

void setup() {
 size(500,500); 
 noStroke();
 size = width/row;
}

void draw() {
  
  //this is a good template for making a grid
  for (float i=0;i<bubbles;i++) {
   
    float x = (i%row) * size;
    float y = int(i/row) * size;
    
    // draw
    fill(random(mouseX),random(mouseY),255, 100);
    rect(x,y,size-1,size-1);
   
  }
  
}
