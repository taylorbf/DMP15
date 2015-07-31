/*Lineangle lineangleA1 = new Lineangle();*/

  float pointX1 = 0; 
  //change to 250 to reverse strokewidth and vertical orientation
  float pointY1 = 0;
  float moveX1 = 1;
  float moveY1 = 1;
  float pointX2 = 0;
  float pointY2 = 0;
  float moveX2 = 1;
  float moveY2 = 1;
  
  

void setup() {
  size(1000,1000);
}

void draw() {
  background(255);
    pointX1 = pointX1 + moveX1;
    pointY1 = pointY1 + moveY1;
    pointX2 = pointX2 + moveX2;
    pointY2 = pointY2 + moveY2;
   
  
     if (pointX1 > width || pointX1 < 0) { 
      moveX1 = moveX1 * -1;
    }
    if (pointY1 > height/8 || pointY1 < 0) { 
      moveY1 = moveY1 * -1;
    }
    stroke(0,150);
    if (pointY1 >= 0 && pointX1 >=0) {
      strokeWeight(pointY1/11);
    } else { 
      strokeWeight(pointY1/-23);
    }
      for (int i = 0; i <125; i = i + 10) {
      line(i+pointX1,i+pointY1, i + pointX1, height/4 - (i+pointY1));
     }
     pointX1 = pointX1 + moveX1;
     pointY1 = pointY1 + moveY1;
     
    if (pointX2 > width/8 || pointX2 < 0) { 
      moveX2 = moveX2 * -1;
    }
    if (pointY2 > height || pointY2 < 0) { 
      moveY2 = moveY2 * -1;
    }
    stroke(0,150);
    if (pointX2 >= 0) {
      strokeWeight(pointX2/11);
    } else { 
      strokeWeight(pointX2/-23);
    }
      for (int i = 0; i <125; i = i + 10) {
      line(i+pointX2,i+pointY2, width/4 - (i+pointX2), i+pointY2);
     }
     pointX2 = pointX2 + moveX2;
     pointY2 = pointY2 + moveY2;
}

/*class Lineangle {
  /*float pointX = 0; 
  //change to 250 to reverse strokewidth and vertical orientation
  float pointY = 0;
  float moveX = .25;
  float moveY = .25;*/
  
  
  /*Lineangle() {
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
      line(i+pointX,i+pointY, width/4 - (i+pointX), i+pointY);
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
      line(i+pointX+(width*.75),i+pointY, width - (i+pointX), i+pointY);
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
      line(i+pointX,i+pointY*-1+height, width/4 - (i+pointX), i+pointY*-1+height);
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
      line(i+pointX + (width*.75),i+pointY*-1+height, width - (i+pointX), i+pointY*-1+height);
     }
     pointX = pointX + moveX ;
     pointY = pointY + moveY;  
  }
  
}*/ 
  
