float r = 0;
float g = 0;
float b = 0;

void setup(){
  size(1000,1000);
  background(255);
  frameRate(90);
}

void draw(){
  noStroke();
  smooth();
  if (mousePressed && keyPressed) {
      if (key == '1'){
    fill(r,g,b, random(255));
    ellipse(mouseX+random(20),mouseY+random(20),random(10),random(10));
    ellipse(mouseX-random(20),mouseY-random(20),random(40),random(10));
    ellipse(mouseX+random(40),mouseY+random(20),random(10),random(10));
    ellipse(mouseX-random(20),mouseY-random(20),random(10),random(50));
      }
  }
  if (mousePressed && keyPressed) {
      if (key == '2'){
    fill(r,g,b,255);
    ellipse(mouseX,mouseY,25,25);
      }
  }
   if (mousePressed && keyPressed) {
      if (key == '3'){
    fill(r,g,b,150);
    beginShape();
    vertex(mouseX+random(30),mouseY+random(5));
    vertex(mouseX-random(30),mouseY+random(10));
    vertex(mouseX+random(30),mouseY+random(10));
    vertex(mouseX-random(30),mouseY+random(10));
    endShape(); 
      }
  }
  if (mousePressed && keyPressed) {
      if (key == '4'){
    fill(r,g,b,5);
    ellipse(mouseX,mouseY,50,100);
      }
  }
  if (mousePressed && keyPressed) {
      if (key == '5'){
    fill(r,g,b);
    ellipse(mouseX,mouseY,2,2);
    ellipse(mouseX,mouseY+4,2,2);
    ellipse(mouseX,mouseY+8,2,2);
    ellipse(mouseX,mouseY+12,2,2);
    ellipse(mouseX,mouseY+16,2,2);
      }
  }
  if (mousePressed && keyPressed) {
      if (key == '6'){
    fill(r,g,b);
    rect(mouseX,mouseY,5,5);
      }
  }
  if (mousePressed && keyPressed) {
      if (key == '7'){
    fill(r,g,b,25);
    ellipse(mouseX,mouseY,random(50),random(50));
    ellipse(mouseX,mouseY,random(50),random(50));
    ellipse(mouseX,mouseY,random(50),random(50));
    ellipse(mouseX,mouseY,random(50),random(50));
    ellipse(mouseX,mouseY,random(50),random(50));
      }
  }
  if (mousePressed && keyPressed) {
      if (key == '8'){
    fill(r+random(255),g,b);
    ellipse(mouseX,mouseY,random(250),25);
      }
  }
  if (mousePressed && keyPressed) {
      if (key == '9'){
    fill(r,g,b,10);
    ellipse(mouseX+1,mouseY+1,random(20),random(20));
    ellipse(mouseX+2,mouseY+2,random(20),random(20));
    ellipse(mouseX+3,mouseY+3,random(20),random(20));
    ellipse(mouseX+4,mouseY+4,random(20),random(20));
    ellipse(mouseX-1,mouseY-1,random(20),random(20));
    ellipse(mouseX-2,mouseY-2,random(20),random(20));
    ellipse(mouseX-3,mouseY-3,random(20),random(20));
    ellipse(mouseX-4,mouseY-4,random(20),random(20));
    ellipse(mouseX+1,mouseY-1,random(20),random(20));
    ellipse(mouseX+2,mouseY-2,random(20),random(20));
    ellipse(mouseX+3,mouseY-3,random(20),random(20));
    ellipse(mouseX+4,mouseY-4,random(20),random(20));
    ellipse(mouseX-1,mouseY+1,random(20),random(20));
    ellipse(mouseX-2,mouseY+2,random(20),random(20));
    ellipse(mouseX-3,mouseY+3,random(20),random(20));
    ellipse(mouseX-4,mouseY+4,random(20),random(20));
      }
  }
  if (mousePressed && keyPressed) {
      if (key == '0'){
    fill(r,g,b,5);
    ellipse(mouseX,mouseY,30,30);
    ellipse(mouseX+4,mouseY+2,30,30);
    ellipse(mouseX+12,mouseY+5,30,30);
    ellipse(mouseX+16,mouseY+7,30,30);
    ellipse(mouseX+12,mouseY+11,30,30);
    ellipse(mouseX+8,mouseY+15,30,30);
    ellipse(mouseX+4,mouseY+18,30,30);
    ellipse(mouseX,mouseY+21,30,30);
    ellipse(mouseX-2,mouseY+26,30,30);
    ellipse(mouseX-6,mouseY+28,30,30);
    ellipse(mouseX-8,mouseY+32,30,30);
    ellipse(mouseX-8,mouseY+34,30,30);
      }
  }
}
void keyReleased() {
  r = random(255);
  g = random(255);
  b = random(255);
  }





