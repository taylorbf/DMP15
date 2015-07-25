int x = mouseX;
int y = mouseY;

void setup() {
  frameRate(50);
  size(1000,1000);
  background(100);
}

void draw() {
  noStroke();
  smooth();
  if (mousePressed) {
    fill(255,random(255));
  } else {
    fill(x,50,random(200),y);
  }
  ellipse(500,500,x+random(20),x+random(20));
  x = mouseX;
  y = mouseY;
}


