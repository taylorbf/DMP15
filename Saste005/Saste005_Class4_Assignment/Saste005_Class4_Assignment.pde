float r = 0;
float g = 0;
float b = 0;
float r2 = 0;
float g2 = 0;
float b2 = 0;
float r3 = 0;
float g3 = 0;
float b3 = 0;
float r4 = 0;
float b4 = 0;
float g4 = 0;


void setup() {
  size(1000,1000);
  background(255);
}
void draw() {
  noStroke();
  smooth();
  fill(r,g,b,25);
  ellipse(width/2,height/2,mouseX-400,mouseY+400);
  r = (mouseX+mouseY)/10;
  g = (mouseX+mouseY)/10;
  fill(r2,g2,b2,50);
  ellipse(width/2,height/2,mouseX+300,mouseX-300);
  b2 = (mouseX+mouseY)/10;
  g2 = (mouseX+mouseY)/10;
  fill(r3,g3,b3,25);
  ellipse(width/2,height/2,mouseY-300,mouseY+300);
  r3 = (mouseX+mouseY)/10;
  b3 = (mouseX+mouseY)/10;
  fill(r4,g4,b4,25);
  beginShape();
  vertex(width/2,height/2);
  vertex(mouseX,mouseY);
  vertex(50,500);
  endShape();
  beginShape();
  vertex(width/2,height/2);
  vertex(mouseX,mouseY);
  vertex(950,500);
  endShape();
  beginShape();
  vertex(width/2,height/2);
  vertex(mouseX,mouseY);
  vertex(500,50);
  endShape();
  beginShape();
  vertex(width/2,height/2);
  vertex(mouseX,mouseY);
  vertex(500,950);
  endShape();
  r4 = (mouseX+mouseY)/10;
  b4 = (mouseX+mouseY)/10;
  fill(200,100,50,50);
  beginShape();
  vertex(500,mouseY);
  vertex(600,mouseY);
  vertex(mouseX,500);
  vertex(mouseX,600);
  vertex(500,mouseY);
  vertex(400,mouseY);
  vertex(mouseX,500);
  vertex(mouseX,400);
  endShape();
  fill(100,75,50,100);
  beginShape();
  vertex(mouseX,500);
  vertex(mouseX,400);
  vertex(500,mouseY);
  vertex(400,mouseY);
  vertex(mouseX,500);
  vertex(mouseX,400);
  vertex(500,mouseY);
  vertex(600,mouseY);
  vertex(mouseX,500);
  vertex(mouseX,600);
  vertex(400,mouseY);
  vertex(mouseX,500);
  vertex(mouseX,400);
  vertex(500,mouseY);
  vertex(600,mouseY);
  vertex(mouseX,500);
  endShape();
  fill(50,75,250,255);
  beginShape();
  vertex(mouseX,500);
  vertex(mouseX,400);
  vertex(500,mouseY);
  vertex(mouseX,500);
  vertex(mouseX,400);
  endShape(); 
}

