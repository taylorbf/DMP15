Lineangle lineangleA1 = new Lineangle();

void setup() {
  size(500,500);
  fill(255,50);
  rect(0,0,width,height);
}

void draw() {
  fill(255,50);
  noStroke();
  rect(0,0,width,height);
  //background(255);
  lineangleA1.lineangleMove();
}

class Lineangle {
  float pointX = 0;
  float pointY = 0;
  float moveX = 1;
  float moveY = 1;
  
  Lineangle() {
  }
  
  void lineangleMove() {
    if (pointX > width/2 || pointX < 0) { 
      moveX = moveX * -1;
    }
    if (pointY > height || pointY < 0) { 
      moveY = moveY * -1;
    }
    stroke(0,150);
    strokeWeight(2);
      for (int i = 0; i < 50; i = i + 5) {
      line(i+pointX,i+pointY, width/2 - (i+pointX), i+pointY);
     }
     //ellipse(pointX,pointY,100,100);
     pointX = pointX + moveX;
     pointY = pointY + moveY;
    //if (pointY > height || pointY < 0) {
      //pointY = (pointY + moveY) * -1;
    //}  
  }
}
  
