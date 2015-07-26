void setup() {
 size(1000,1000);
 background(0);
}

void draw() {
  noStroke();
  smooth();
  for (int i = 0; i < 100; i = i + 1) {
    if (mousePressed) {
    fill(mouseX,mouseY,100,20);
    ellipse(i * mouseX,mouseY,50,50);
    } else {
    fill(100,mouseX,mouseY,20);
    ellipse(i * mouseY,mouseX,50,50);
    }
  }
  
}
  
