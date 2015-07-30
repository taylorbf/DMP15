float x = 0;
float q = 0;
int speed = 3;
int x1 = 0;
int x2 = 0;
int x3 = 0;
int x4 = 0;
int x5 = 0;
int x6 = 0;
int x7 = 0;
int x8 = 0;
int x9 = 0;
int x10 = 0;
int x11 = 0;
int x12 = 0;
int x13 = 0;
int x14 = 0;

int sizeW = 500;
int sizeH = 500;

/*void moveLeft (){
  x = x - speed;
}

void moveRight (){
  q = q + speed;
}*/

void setup () {
 size (500,500); 
}

void draw () {
 noStroke();
 background (255,255);
 fill(7,106,232);
 rect(x,0,sizeW,sizeH/2);
 x = x + speed;
 rect(q,height/2,sizeW,sizeH/2);
 q = q - speed;
 
 fill(0);
 if(x >= width) {
 rect(x1,0,sizeW,sizeH/4);
 x1 = x1 + speed;
 rect(x2,height*.25,sizeW,sizeH/4);
 x2 = x2 - speed ;
 rect(x3,height*.5,sizeW,sizeH/4);
 x3 = x3 + speed;
 rect(x4,height*.75,sizeW,sizeH/4);
 x4 = x4 - speed;
 }
 
 fill(185,39,125);
 if(x3 >= width) {
  rect(x7,0,sizeW,sizeH/8);
  x7 = x7 + speed;
  rect(x8,height*1/8,sizeW,sizeH/8+1);
  x8 = x8 - speed;
  rect(x9,height*2/8,sizeW,sizeH/8+1);
  x9 = x9 + speed;
  rect(x10,height*3/8,sizeW,sizeH/8+1);
  x10 = x10 - speed;
  rect(x11,height*4/8,sizeW,sizeH/8+1);
  x11 = x11 + speed;
  rect(x12,height*5/8,sizeW,sizeH/8+1);
  x12 = x12 - speed;
  rect(x13,height*6/8,sizeW,sizeH/8+1);
  x13 = x13 + speed;
  rect(x14,height*7/8,sizeW,sizeH/8+1);
  x14 = x14 - speed;
 }
}



