float pointX = 0;
float pointY = 0;

void setup() {
  size(1000,1000);
}

void draw() {
  background(255);
  smooth();
  if (pointX < 200 && pointY < 200) {
  pushMatrix();
  ellipse(pointX,pointY,100,100);
  pointMove1(1);
  popMatrix();
  }
  if (pointX >= 200 && pointY >= 200) {
  pushMatrix();
  ellipse((pointX)+200,(pointY)+200,100,100);
  pointMove2(1);
  popMatrix();
  }
  
}

void pointMove1(float move) {
    pointX = pointX + move;
    pointY = pointY + move;
}
void pointMove2(float move) {
    pointX = pointX - move;
    pointY = pointY + move;
}
