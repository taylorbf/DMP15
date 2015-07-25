void setup(){
  size(1000,1000);
  background(255);
}

void draw(){
  if (mousePressed) {
    noStroke();
    smooth();
    fill(random(10), random(255));
    ellipse(mouseX+random(20),mouseY+random(20),random(10),random(10));
    ellipse(mouseX-random(20),mouseY-random(20),random(40),random(10));
    ellipse(mouseX+random(40),mouseY+random(20),random(10),random(10));
    ellipse(mouseX-random(20),mouseY-random(20),random(10),random(50));
  }
}
