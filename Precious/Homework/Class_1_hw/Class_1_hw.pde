float x = 0;

void setup() {
  size(1200, 600);
}

void draw() {
  stroke(x/6,100,150);
  strokeWeight(x/10);
  ellipse(x/3,200,x/6,mouseX);
  // I want these two to have different colors! can't get it.
  fill(200,x/60,x);
  ellipse(1200-x,400,x/6,mouseY);
  
  fill(50,x,x/10);
  ellipse(600,x/6,x/6,mouseX-mouseY-mouseY);
  
  x = x + 1;
}
  
  
