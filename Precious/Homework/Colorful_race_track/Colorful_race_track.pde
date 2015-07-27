float x = 0;

void setup() {
  size(500,500);
  fill(50,100,200,30);
  rect(0,0,width,height);
}

void draw() {
  
  for (int i=0; i<6; i=i+1) {
    x = i*42;
    fill(mouseY,mouseX/2,mouseY/2,mouseX);
    rect(x*2,mouseY,42,75);
  }
}
