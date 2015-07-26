int value = 0;

void setup() {
  size(800,800);
  frameRate(35);
}

void draw() {
  fill(100,10);
  strokeWeight(5);
  rect(0,0,width,height);
  //fill(random(100),random(100),random(100));
  //rect(width/4, height/4, 250, 250);
}

void mouseMoved() {
  stroke(random(100,200),random(100,200),random(100,200));
   if (keyPressed) {
  stroke(0);
  }
  line(mouseX,mouseX,mouseX-5,mouseY-5);
 
  }
  
/*void keyPressed() {o
  if (
    stroke (0);
}
} */

    

