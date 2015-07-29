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

int y = 1;
int sizeW = 500;
int sizeH = 500;

void setup () {
 size (500,500); 
}

void draw () {
 noStroke();
 background (255,255);
 fill(7,106,232);
 rect(x1,0,sizeW,sizeH/2);
 x1 = x1 + y;
 rect(x2,height/2,sizeW,sizeH/2);
 x2 = x2 - y;
 
 
 fill(0);
 
 if(x1 >= width) {
 
   /*for(int i = 0; i < 500; i = height/4) {
   rect(0,i,sizeW,sizeH/4);
   i = i + 1;
  }*/
 
 rect(x3,0,sizeW,sizeH/4);
 x3 = x3 + y;
 rect(x4,125,sizeW,sizeH/4);
 x4 = x4 - y;
 rect(x5,height*.5,sizeW,sizeH/4);
 x5 = x5 + y;
 rect(x6,height*.75,sizeW,sizeH/4);
 x6 = x6 - y;
 }
 
 fill(185,39,125);
 if(x3 >= width) {
  rect(x7,0,sizeW,sizeH/8);
  x7 = x7 + y;
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


