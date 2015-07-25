int x = 1;

void setup() {
  size (300,400); 
  noCursor();
}

void draw() {
  
 //why does this make the background go only between  2 opposite colors?
  background(mouseY,mouseX,mouseY);
  // stroke color
  stroke(0);
  // stroke width
  strokeWeight(2);
  // draw a shape
  ellipse(mouseX,mouseY,20,20);
  x = x + 1;
  fill(random(255),random(255),random(255));
  ellipse(150,50,200,50);
  line(45,360,65,380);
}

