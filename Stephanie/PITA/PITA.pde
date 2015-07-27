

void setup() {
  size(800,800);
  frameRate(65);
}

void draw() {
  fill(100,10);
  noStroke();
  rect(0,0,width,height);
  //strokeWeight(5);
  //changes to big squares based on mouseX number:
  //strokeWeight(mouseX);
  strokeCap(SQUARE);
  
  //fill(random(100),random(100),random(100));
  //rect(width/4, height/4, 250, 250);
}

void mouseMoved() {
  stroke(random(100,255),random(100,255),random(100,255));
  strokeWeight(7);
   if (keyPressed) {
  stroke(0);
  }

  line(mouseX,mouseX,mouseX-5,mouseY-5);  
  }
  


  


  


