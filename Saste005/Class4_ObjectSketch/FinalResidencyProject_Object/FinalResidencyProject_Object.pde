void setup () {
  size(500,500);
  background(255);
}

void draw () {
  println(mouseX,mouseY);
  smooth();
  stroke(0);
  strokeCap(SQUARE);
  strokeWeight(1);
  //bevel thick rect
  fill(0);
  beginShape();
  vertex(250,100);
  vertex(225,260);
  vertex(237,240);
  vertex(270,90);
  vertex(250,100); 
  endShape();
  line(250,38,270,335);
  line(257,25,260,95);
  strokeWeight(3);
  line(250,145,290,130);
  line(259,153,279,145);
  noStroke();
  ellipseMode(CORNER);
  ellipse(260,166,8,8);
  ellipse(261,188,7,7);
  ellipse(263,209,5,5);
}



  
