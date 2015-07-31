Lineangle lineangleA1 = new Lineangle();

void setup() {
  size(1000,1000);
}

void draw() {
  background(255);
  lineangleA1.lineangleMove();
  lineangleA1.lineangleMove2();
  lineangleA1.lineangleMove3();
  lineangleA1.lineangleMove4();
  lineangleA1.lineangleMove5();
}

class Lineangle {
  float pointX = 0; 
  //change to 250 to reverse strokewidth and vertical orientation
  float pointY = 0;
  float moveX = .25;
  float moveY = .25;
  
  
  Lineangle() {
  }
  
  void lineangleMove() {
    if (pointX > width/4 || pointX < 0) { 
      moveX = moveX * -1;
    }
    if (pointY > height || pointY < 0) { 
      moveY = moveY * -1;
    }
    stroke(0,125);
    if (pointX >= 0) {
      strokeWeight(pointX/24);
    } else { 
      strokeWeight(pointX/-24);
    }
      for (int i = 0; i < 50; i = i + 10) {
      line(i+pointX,i+pointY, width/4 - (i+pointX), i+pointY);
     }
     //ellipse(pointX,pointY,100,100);
     pointX = pointX + moveX;
     pointY = pointY + moveY;
  }
  void lineangleMove2() {
    if (pointX > width/8 || pointX < 0) {
     //adjust width/? to control expansion/retraction 
      moveX = moveX * -1;
    }
    if (pointY > height || pointY < 0) { 
      moveY = moveY * -1;
    }
    stroke(0,125);
    if (pointX >= 0) {
      strokeWeight(pointX/12);
    } else { 
      strokeWeight(pointX/-48);
      //must adjust to apply equal strokeweight changes
    }
      for (int i = 0; i < 50; i = i + 10) {
      line(i+pointX +250,i+pointY, width/4 - (i+pointX), i+pointY);
      //add to starting point to change location
     }
     
     pointX = pointX + moveX;
     pointY = pointY + moveY;
   }
   void lineangleMove3() {
    if (pointX > width/12 || pointX < 0) {
     //adjust width/? to control expansion/retraction 
      moveX = moveX * -1;
    }
    if (pointY > height || pointY < 0) { 
      moveY = moveY * -1;
    }
    stroke(0,125);
    if (pointX >= 0) {
      strokeWeight(pointX/6);
    } else { 
      strokeWeight(pointX/-96);
      //must adjust to apply equal strokeweight changes
    }
      for (int i = 0; i < 50; i = i + 10) {
      line(i+pointX + 500,i+pointY, width/4 - (i+pointX), i+pointY);
      //add to starting point to change location
     }
     pointX = pointX + moveX;
     pointY = pointY + moveY;
  }
   void lineangleMove4() {
    if (pointX > width/8 || pointX < 0) {
     //adjust width/? to control expansion/retraction 
      moveX = moveX * -1;
    }
    if (pointY > height || pointY < 0) { 
      moveY = moveY * -1;
    }
    stroke(0,125);
    if (pointX >= 0) {
      strokeWeight(pointX/12);
    } else { 
      strokeWeight(pointX/-48);
      //must adjust to apply equal strokeweight changes
    }
      for (int i = 0; i < 50; i = i + 10) {
      line(i+pointX + 750,i+pointY, width/4 - (i+pointX), i+pointY);
      //add to starting point to change location
     }
     pointX = pointX + moveX;
     pointY = pointY + moveY;
  }
  void lineangleMove5() {
    if (pointX > width/4 || pointX < 0) {
     //adjust width/? to control expansion/retraction 
      moveX = moveX * -1;
    }
    if (pointY > height || pointY < 0) { 
      moveY = moveY * -1;
    }
    stroke(0,125);
    if (pointX >= 0) {
      strokeWeight(pointX/24);
    } else { 
      strokeWeight(pointX/-24);
      //must adjust to apply equal strokeweight changes
    }
      for (int i = 0; i < 50; i = i + 10) {
      line(i+pointX + 1000,i+pointY, width/4 - (i+pointX), i+pointY);
      //add to starting point to change location
     }
     pointX = pointX + moveX;
     pointY = pointY + moveY;
  }
}
  
