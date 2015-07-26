

void setup() {
  size (1000,1000);
  background(0,50);
}

void draw() {
  println(mouseX,mouseY);
  noStroke();
  smooth();
  int x = width/2;
  int y = height/2;
  fill(mouseX/10,mouseY/10,0,5);
  ellipse(x,y,mouseX-400,mouseY+400);
  fill(mouseX/10,0,mouseY/10,50);
  ellipse(x,y,width-mouseX,height-mouseY);
  stroke(255);
  strokeWeight(1);
  beginShape();
  vertex(500,height-mouseY);
  vertex(700,300);
  vertex(width-mouseX,500);
  vertex(700,700);
  vertex(500,mouseY);
  vertex(300,700);
  vertex(mouseX,500);
  vertex(300,300);
  vertex(500,height-mouseY);
  endShape();
  if (mousePressed) {
  for (int i = 0; i < 100; i = i + 1) {
    noStroke();
    smooth();
    fill(mouseX,mouseY,100,20);
    ellipse(i * mouseX,i * mouseY,random(200),random(200));
  }
  }
  
}
