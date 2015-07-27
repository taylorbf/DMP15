int x = 1;
void setup() {
  size(800,800);
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
  vertex(312,250); //nose
  vertex(144,200); //left wing
  vertex(399,160); //right wing
  endShape(CLOSE);
  
  fill(44,235,0);
  
  beginShape();
  strokeWeight(15);
  vertex(196,201);
  vertex(312,333); //312,333
  vertex(175,265);
  endShape(CLOSE);
  
  
  beginShape();
  vertex(175,265);
  vertex(312,333);
  vertex(196,201);
  endShape(CLOSE);
  
  beginShape();
  vertex(196,201);
  vertex(265,200);
  vertex(312,333);
  endShape(CLOSE);
  
  //strokeWeight(60);
  //point(175,265);
  
}
