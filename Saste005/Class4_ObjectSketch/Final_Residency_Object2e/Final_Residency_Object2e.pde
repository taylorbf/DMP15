Mover mover1 = new Mover();

void setup() {
  size(500,500);
}

void draw() {
  background(255);
  mover1.pointMove();
}

class Mover {
  float pointX = 0;
  float pointY = 0;
  float moveX = 1;
  float moveY = 1;
  
  Mover() {
  }
  
  void pointMove() {
    if (pointX > width/2 || pointX < 0) { 
      moveX = moveX * -1;
    }
    if (pointY > height || pointY < 0) { 
      moveY = moveY * -1;
    }
     ellipse(pointX,pointY,100,100);
      pointX = pointX + moveX;
      pointY = pointY + moveY;
    //if (pointY > height || pointY < 0) {
      //pointY = (pointY + moveY) * -1;
    //}  
  }
}
  
