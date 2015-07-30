float x = 0;
float speed = 2;
int bWidth;
int bHeight;

void setup () {
 size (500,500); 
 bWidth = width;
 bHeight = height;
}

void moveLeft (){
  x = x - speed;
}

void moveRight (){
  x = x + speed;
}

void draw () {
 noStroke();
 background (255,255);
 fill(7,106,232);
 
 rect(x,0,bWidth,bHeight/2);
 moveRight();
 
 rect(xR,height/2,bWidth,bHeight/2);
 moveLeft();

 /*for(float i = 1; i < 500; i = i + 1) {
   rect(0,i,sizeW,sizeH/4);
   i = i + 1;
  }*/
  
 fill(0);
 if(q >= width) {
 rect(q,0,sizeW,sizeH/4);
 moveRight();
 rect(x,125,sizeW,sizeH/4);
 moveLeft();
 rect(q,height*.5,sizeW,sizeH/4);
 moveRight();
 rect(x,height*.75,sizeW,sizeH/4);
 moveLeft();
 }
 
 fill(185,39,125);
 if(x3 >= width) {
  rect(q,0,sizeW,sizeH/8);
  moveRight();
  rect(x8,height*1/8,sizeW,sizeH/8);
  x8 = x8 - y;
  rect(x9,height*2/8,sizeW,sizeH/8);
  x9 = x9 + y;
  rect(x10,height*3/8,sizeW,sizeH/8);
  x10 = x10 - y;
  rect(x11,height*4/8,sizeW,sizeH/8);
  x11 = x11 + y;
  rect(x12,height*5/8,sizeW,sizeH/8);
  x12 = x12 - y;
  rect(x13,height*6/8,sizeW,sizeH/8);
  x13 = x13 + y;
  rect(x14,height*7/8,sizeW,sizeH/8);
  x14 = x14 - y;
 }
}


