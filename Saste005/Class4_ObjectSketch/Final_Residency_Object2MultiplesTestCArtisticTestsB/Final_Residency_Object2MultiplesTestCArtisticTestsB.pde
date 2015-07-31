Lineangle lineangleA1 = new Lineangle();

void setup() {
  size(1000,1000);
}

void draw() {
  background(255);
  lineangleA1.lineangleMove1();
  lineangleA1.lineangleMove2();
  lineangleA1.lineangleMove3();
  lineangleA1.lineangleMove4();
  lineangleA1.lineangleMove5();
  lineangleA1.lineangleMove6();
}

class Lineangle {
  float pointX = 0; 
  //change to 250 to reverse strokewidth and vertical orientation
  float pointY = 0;
  float moveX = .25;
  float moveY = .25;
  
  
  Lineangle() {
  }
  
  void lineangleMove1() {
    if (pointX > width/8 || pointX < 0) { 
      moveX = moveX * -1;
    }
    if (pointY > height || pointY < 0) { 
      moveY = moveY * -1;
    }
    stroke(0,150);
    if (pointX >= 0) {
      strokeWeight(pointX/11);
    } else { 
      strokeWeight(pointX/-23);
    }
      for (int i = 0; i <125; i = i + 10) {
      line(i+pointX,i+pointY, width/4 - (i+-pointX), i+pointY);
     }
     pointX = pointX + moveX;
     pointY = pointY + moveY;
     
  }
  void lineangleMove2() {
    if (pointX > width/8 || pointX < 0) { 
      moveX = moveX * -1;
    }
    if (pointY > height || pointY < 0) { 
      moveY = moveY * -1;
    }
    stroke(0,150);
    if (pointX >= 0) {
      strokeWeight(pointX/11);
    } else { 
      strokeWeight(pointX/-23);
    }
      for (int i = 0; i <125; i = i + 10) {
      line(i+pointX+(width/2),i+pointY, width/2 - (i+pointX), i+pointY);
     }
     pointX = pointX + moveX ;
     pointY = pointY + moveY;
     
  }
  void lineangleMove3() {
    if (pointX > width/8 || pointX < 0) { 
      moveX = moveX * -1;
    }
    if (pointY > height || pointY < 0) { 
      moveY = moveY * -1;
    }
    stroke(0,150);
    if (pointX >= 0) {
      strokeWeight(pointX/11);
    } else { 
      strokeWeight(pointX/-23);
    }
      for (int i = 0; i <125; i = i + 10) {
      line(i+-pointX+(width*.75),i+pointY, width - (i+pointX), i+pointY);
     }
     pointX = pointX + moveX ;
     pointY = pointY + moveY;
     
  }
    void lineangleMove4() {
    if (pointX > width/8 || pointX < 0) { 
      moveX = moveX * -1;
    }
    if (pointY > height || pointY < 0) { 
      moveY = moveY * -1;
    }
    stroke(0,150);
    if (pointX >= 0) {
      strokeWeight(pointX/11);
    } else { 
      strokeWeight(pointX/-23);
    }
      for (int i = 0; i <125; i = i + 10) {
      line(i+pointX,i+pointY*-1+height, width/4 - (i+-pointX), i+pointY*-1+height);
     }
     pointX = pointX + moveX ;
     pointY = pointY + moveY;
     
  }
    void lineangleMove5() {
    if (pointX > width/8 || pointX < 0) { 
      moveX = moveX * -1;
    }
    if (pointY > height || pointY < 0) { 
      moveY = moveY * -1;
    }
    stroke(0,150);
    if (pointX >= 0) {
      strokeWeight(pointX/11);
    } else { 
      strokeWeight(pointX/-23);
    }
      for (int i = 0; i <125; i = i + 10) {
      line(i+pointX + (width/2),i+pointY*-1+height, width/2 - (i+pointX), i+pointY*-1+height);
     }
     pointX = pointX + moveX ;
     pointY = pointY + moveY;
     
  }
  void lineangleMove6() {
    if (pointX > width/8 || pointX < 0) { 
      moveX = moveX * -1;
    }
    if (pointY > height || pointY < 0) { 
      moveY = moveY * -1;
    }
    stroke(0,150);
    if (pointX >= 0) {
      strokeWeight(pointX/11);
    } else { 
      strokeWeight(pointX/-23);
    }
      for (int i = 0; i <125; i = i + 10) {
      line(i+-pointX + (width*.75),i+pointY*-1+height, width - (i+pointX), i+pointY*-1+height);
     }
     pointX = pointX + moveX ;
     pointY = pointY + moveY;
     
  } 
}
  
