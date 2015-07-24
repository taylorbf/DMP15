void setup() {
  size(1200,600);
}

void draw() {
  fill(mouseX,mouseY,255-mouseY,255-mouseX);
  rect(0,0,width,height);
  
  fill(mouseX*.2,50,50);
  ellipse(300,200,mouseY,mouseX);
  
  fill(mouseY*.33,200,200);
  rect(600,200,mouseX,mouseY);
  
}

