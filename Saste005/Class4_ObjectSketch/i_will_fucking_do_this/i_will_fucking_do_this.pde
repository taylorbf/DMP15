/*Lineangle lineangleA1 = new Lineangle();*/

  float pointX1 = 0; 
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
  float pointX7 = 0;
  float pointY7 = 0;
  float moveX7 = 1;
  float moveY7 = 1;
  float pointX8 = 0;
  float pointY8 = 0;
  float moveX8 = 1;
  float moveY8 = 1;
  float pointX9 = 0;
  float pointY9 = 0;
  float moveX9 = 1;
  float moveY9 = 1;
  float pointX10 = 0;
  float pointY10 = 0;
  float moveX10 = 1;
  float moveY10 = 1;
  float pointX11 = 0;
  float pointY11 = 0;
  float moveX11 = 1;
  float moveY11 = 1;
  float pointX12 = 0;
  float pointY12 = 0;
  float moveX12 = 1;
  float moveY12 = 1;
  //change move floats to adjust speed
  //change to 250 to reverse strokewidth and vertical orientation
  
  

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
    pointX7 = pointX7 + moveX7;
    pointY7 = pointY7 + moveY7;
    pointX8 = pointX8 + moveX8;
    pointY8 = pointY8 + moveY8;
    pointX9 = pointX9 + moveX9;
    pointY9 = pointY9 + moveY9;
    pointX10 = pointX10 + moveX10;
    pointY10 = pointY10 + moveY10;
    pointX11 = pointX11 + moveX11;
    pointY11 = pointY11 + moveY11;
    pointX12 = pointX12 + moveX12;
    pointY12 = pointY12 + moveY12;
   
    //LINEANGLE1 (12)
     if (pointX1 > width || pointX1 < 0) { 
      moveX1 = moveX1 * -1;
    }
    if (pointY1 > height/8 || pointY1 < 0) { 
      moveY1 = moveY1 * -1;
    }
    stroke(0,150);
    if (pointY1 >= 0 && pointY1 >=0) {
      strokeWeight(pointY1/11);
    } else { 
      strokeWeight(pointY1/-23);
    }
      for (int i = 0; i <125; i = i + 10) {
      line(i + pointX1-125,(height/8 + pointY1) - i, i + pointX1-125, (height/8 + -pointY1) + i);
        //OLDCODE line(i+pointX1-125,i+pointY1, i + pointX1-125, height/4 - (i+pointY1));
      //LINEANGLE1REF line((width/8 + pointX2) - i,i+pointY2-125, (width/8 + -pointX2) + i, i+pointY2-125);
     }
    
  //LINEANGLE2 (1)
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
      line((width/8 + pointX2) - i,i+pointY2-125, (width/8 + -pointX2) + i, i+pointY2-125);
     }
     
    /*//LINEANGLE3 (2)
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
      //line((width/2 + -pointX3) + i,i+pointY2-125, (width/2 + pointX3) - i, i+pointY3-125);
      //line((width/2 + pointX3) - i,i+pointY2-125, (width/2 + -pointX3) + i, i+pointY3-125);
      line(-i+pointX3+(width/2),i+pointY3-125, width/2 - (-i+pointX3), i+pointY3-125);
      //same size same expansion
      //line(i+pointX3+(width/2),i+pointY3-125, width/2 - (i+pointX3), i+pointY3-125);
      //line((width/2 + -pointX3) - i,i+pointY2-125, (width/2 + pointX3) + i, i+pointY3-125);
      //cut off opposite expansion
     }*/
    
   /* //LINEANGLE4 (8)
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
       line(i+pointX4+500,i+pointY4*-1+height, 500 - (i+pointX4), i+pointY4*-1+height);
      //line(i+pointX4 + (width/2),i+pointY4*-1+height, width/2 - (i+pointX4), i+pointY4*-1+height);
      //cut off triangle same expansion
      //line(-i+pointX4 + (width/2),i+pointY4*-1+height, width/2 - (-i+pointX4), i+pointY4*-1+height);
      //same size opposite expansion
      
      } */
    
    //LINEANGLE5 (3)
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
      line((width*.87 + pointX5) - i,i+pointY5-125, (width*.87 +-pointX5) + i, i+pointY5-125);
     }
    
    //LINEANGLE6 (9)
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
     
    /*//LINEANGLE7 (11)
     if (pointX7 > width || pointX7 < 0) { 
      moveX7 = moveX7 * -1;
    }
    if (pointY7 > height/8 || pointY7 < 0) { 
      moveY7 = moveY7 * -1;
    }
    stroke(0,150);
    if (pointY7 >= 0 && pointY7 >=0) {
      strokeWeight(pointY7/11);
    } else { 
      strokeWeight(pointY7/-23);
    }
      for (int i = 0; i <125; i = i + 10) {
      line(i + pointX7-125,(height/2 + pointY7) - i, i + pointX7-125, (height/2 + -pointY7) + i);
     // OLD CODEline(i+pointX7-125,-i+pointY7+(height/2), i + pointX7-125, height/2 - (-i+pointY7));
     }*/
     
     //LINEANGLE8 (10)
     if (pointX8 > width || pointX8 < 0) { 
      moveX8 = moveX8 * -1;
    }
    if (pointY8 > height/8 || pointY8 < 0) { 
      moveY8 = moveY8 * -1;
    }
    stroke(0,150);
    if (pointY8 >= 0 && pointY8 >=0) {
      strokeWeight(pointY8/11);
    } else { 
      strokeWeight(pointY8/-23);
    }
      for (int i = 0; i <125; i = i + 10) {
     line(i + pointX8-125,(height*.87 + pointY8) - i, i + pointX8-125, (height*.87 + -pointY8) + i); 
     //OLDCODE line(i+pointX8-125,i+pointY8+(width*.75), i + pointX8-125, height - (i+pointY8));
     }
    
    //LINEANGLE9 (7)
    if (pointX9 > width/8 || pointX9 < 0) { 
      moveX9 = moveX9 * -1;
    }
    if (pointY9 > height || pointY9 < 0) { 
      moveY9 = moveY9 * -1;
    }
    stroke(0,150);
    if (pointX9 >= 0) {
      strokeWeight(pointX9/11);
    } else { 
      strokeWeight(pointX9/-23);
    }
      for (int i = 0; i <125; i = i + 10) {
      line(i+pointX9+(width*.75),i+pointY9*-1+height, width - (i+pointX9), i+pointY9*-1+height);
     }
     
     //LINEANGLE10 (4)
     if (pointX10 > width || pointX10 < 0) { 
      moveX10 = moveX10 * -1;
    }
    if (pointY10 > height/8 || pointY10 < 0) { 
      moveY10 = moveY10 * -1;
    }
    stroke(0,150);
    if (pointY10 >= 0 && pointY10 >=0) {
      strokeWeight(pointY10/11);
    } else { 
      strokeWeight(pointY10/-23);
    }
      for (int i = 0; i <125; i = i + 10) {
      line(i+pointX10*-1+width,i+pointY10, i + pointX10*-1+width, height/4 - (i+pointY10));
      //line(i+pointX10*-1,i+pointY10, i + pointX10*-1, height/4 - (i+pointY10));
     }
    
    /*//LINEANGLE11 (5)
     if (pointX11 > width || pointX11 < 0) { 
      moveX11 = moveX11 * -1;
    }
    if (pointY11 > height/8 || pointY11 < 0) { 
      moveY11 = moveY11 * -1;
    }
    stroke(0,150);
    if (pointY11 >= 0 && pointY11 >=0) {
      strokeWeight(pointY11/11);
    } else { 
      strokeWeight(pointY11/-23);
    }
      for (int i = 0; i <125; i = i + 10) {
      line(i+pointX11*-1+width,-i+pointY11+(height/2), i + pointX11*-1+width, height/2 - (-i+pointY11));
     }*/
    
    //LINEANGLE8 (6)
     if (pointX12 > width || pointX12 < 0) { 
      moveX12 = moveX12 * -1;
    }
    if (pointY12 > height/8 || pointY12 < 0) { 
      moveY12 = moveY12 * -1;
    }
    stroke(0,150);
    if (pointY12 >= 0 && pointY12 >=0) {
      strokeWeight(pointY12/11);
    } else { 
      strokeWeight(pointY12/-23);
    }
      for (int i = 0; i <125; i = i + 10) {
      line(i+pointX12*-1+width,i+pointY12+(width*.75), i + pointX12*-1+width, height - (i+pointY12));
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
  
