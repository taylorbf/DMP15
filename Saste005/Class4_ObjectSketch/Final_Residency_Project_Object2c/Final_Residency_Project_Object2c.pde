float pointX = 0;
float pointY = 0;

void setup() {
  size(1000,1000);
}

void draw() {
  background(255);
  smooth();
  ellipse(pointX,pointY,100,100);
  pointMove(1,1);
}

void pointMove(float moveX, float moveY) {
  if (pointX == 200 && pointY == 200) {
    pointX = pointX - moveX;
    pointY = pointY - moveY;
  } else {
  pointX = pointX + moveX;
  pointY = pointY + moveY;
  }
}
