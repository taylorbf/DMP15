int x = 1;
void setup() {
  size(400,400);
}

void draw() {
  //noStroke();
  strokeJoin (ROUND);
  background(209,7,60);
  //what does the "random (x)" mean/refer to?
  //ellipse(random(x),random(x),100,100);
  //x = x + 5;
  fill(255);
  beginShape();
  vertex(mouseX+3,mouseY+3);
  vertex(144,289);
  vertex(399,102);
  endShape(CLOSE);
  fill(44,235,0);
  beginShape();
  strokeWeight(20);
  vertex(196,201);
  vertex(mouseX,mouseY);
  vertex(175,265);
  endShape(CLOSE);
  
  beginShape();
  vertex(175,265);
  vertex(mouseX,mouseY);
  vertex(196,201);
  endShape(CLOSE);
  
  beginShape();
  vertex(196,201);
  vertex(265,200);
  vertex(mouseX,mouseY);
  endShape(CLOSE);
  
  //strokeWeight(60);
  //point(175,265);
  
}
