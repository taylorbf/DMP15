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
  float pointX3 = 0;
  float pointY3 = 0;
  float moveX3 = 1;
  float moveY3 = 1;
  float pointX4 = 0;
  float pointY4 = 0;
  float moveX4 = 1;
  float moveY4 = 1;
  float pointX5 = 0;
  float pointY5 = 0;
  float moveX5 = 1;
  float moveY5 = 1;
  float pointX6 = 0;
  float pointY6 = 0;
  float moveX6 = 1;
  float moveY6 = 1;
  
  

void setup() {
  size(1000,1000);
}

void draw() {
  background(255);
    pointX1 = pointX1 + moveX1;
    pointY1 = pointY1 + moveY1;
    pointX2 = pointX2 + moveX2;
    pointY2 = pointY2 + moveY2;
    pointX3 = pointX3 + moveX3;
    pointY3 = pointY3 + moveY3;
    pointX4 = pointX4 + moveX4;
    pointY4 = pointY4 + moveY4;
    pointX5 = pointX5 + moveX5;
    pointY5 = pointY5 + moveY5;
    pointX6 = pointX6 + moveX6;
    pointY6 = pointY6 + moveY6;
   
    //LINEANGLE1
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
    
    //LINEANGLE2 
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
     
    //LINEANGLE3
    if (pointX3 > width/8 || pointX3 < 0) { 
      moveX3 = moveX3 * -1;
    }
    if (pointY3 > height || pointY3 < 0) { 
      moveY3 = moveY3 * -1;
    }
    stroke(0,150);
    if (pointX3 >= 0) {
      strokeWeight(pointX3/11);
    } else { 
      strokeWeight(pointX3/-23);
    }
      for (int i = 0; i <125; i = i + 10) {
      line(i+pointX3+(width/2),i+pointY3, width/2 - (i+pointX3), i+pointY3);
     }
    
    //LINEANGLE4
    if (pointX4 > width/8 || pointX4 < 0) { 
      moveX4 = moveX4 * -1;
    }
    if (pointY4 > height || pointY4 < 0) { 
      moveY4 = moveY4 * -1;
    }
    stroke(0,150);
    if (pointX4 >= 0) {
      strokeWeight(pointX4/11);
    } else { 
      strokeWeight(pointX4/-23);
    }
      for (int i = 0; i <125; i = i + 10) {
      line(i+pointX4 + (width/2),i+pointY4*-1+height, width/2 - (i+pointX4), i+pointY4*-1+height);
      }
    
    //LINEANGLE5
    if (pointX5 > width/8 || pointX5 < 0) { 
      moveX5 = moveX5 * -1;
    }
    if (pointY5 > height || pointY5 < 0) { 
      moveY5 = moveY5 * -1;
    }
    stroke(0,150);
    if (pointX5 >= 0) {
      strokeWeight(pointX5/11);
    } else { 
      strokeWeight(pointX5/-23);
    }
      for (int i = 0; i <125; i = i + 10) {
      line(i+pointX5+(width*.75),i+pointY5, width - (i+pointX5), i+pointY5);
     }
    
    //LINEANGLE6
    if (pointX6 > width/8 || pointX6 < 0) { 
      moveX6 = moveX6 * -1;
    }
    if (pointY6 > height || pointY6 < 0) { 
      moveY6 = moveY6 * -1;
    }
    stroke(0,150);
    if (pointX6 >= 0) {
      strokeWeight(pointX6/11);
    } else { 
      strokeWeight(pointX6/-23);
    }
      for (int i = 0; i <125; i = i + 10) {
      line(i+pointX6,i+pointY6*-1+height, width/4 - (i+pointX6), i+pointY6*-1+height);
     }
     
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
      line(i+pointX+(width/2),i+pointY, width/2 - (i+pointX), i+pointY);
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
      line(i+pointX+(width*.75),i+pointY, width - (i+pointX), i+pointY);
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
      line(i+pointX,i+pointY*-1+height, width/4 - (i+pointX), i+pointY*-1+height);
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
      line(i+pointX + (width/2),i+pointY*-1+height, width/2 - (i+pointX), i+pointY*-1+height);
     }
     pointX = pointX + moveX ;
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
      line(i+pointX + (width*.75),i+pointY*-1+height, width - (i+pointX), i+pointY*-1+height);
     }
     pointX = pointX + moveX ;
     pointY = pointY + moveY;  
  }
  
}*/ 
  
