void setup() {
size(500,500);
int x = 25;
int y = 20;
int h = 20;
int w = 50;

background(0);

//MIDDLE
fill(180,169,84);
  rect(0,0,w,h);
  rect(x,y,w,h);
  rect(x + x,y + y,w,h);
  rect(x*3,y*3,w,h);
  rect(x*4,y*4,w,h);
  rect(x*5,y*5,w,h);
  rect(x*6,y*6,w,h);
  
  //FIRST DOWN
  fill(0,198,193);
  rect(-25,y*3,w,h);
  rect(0,y*4,w,h);
  rect(x,y*5,w,h);
  rect(x*2,y*6,w,h);
  rect(x*3,y*7,w,h);
  rect(x*4,y*8,w,h);
  rect(x*5,y*9,w,h);
  
  //FIRST RIGHT
  fill(198,73,0);
  rect(w*2,0,w,h);
  rect(w*2.5,h,w,h);
  rect(w*3,h*2,w,h);
  rect(w*3.5,h*3,w,h);
  rect(w*4,h*4,w,h);
  rect(w*4.5,h*5,w,h);
  rect(w*5,h*6,w,h);
  
  //SECOND DOWN
  fill(130,63,157);
  rect(0,y*7,w/2,h);
  rect(0,y*8,w,h);
  rect(w/2,y*9,w,h);
  rect(w,y*10,w,h);
  rect(w*1.5,y*11,w,h);
  rect(w*2,y*12,w,h);
  rect(w*2.5,y*13,w,h);
 
 //THIRD DOWN
 fill(81,86,178);
  rect(0,y*11,w/2,h);
  rect(0,y*12,w,h);
  rect(x,y*13,w,h);
  rect(x*2,y*14,w,h);
  rect(x*3,y*15,w,h);
  rect(x*4,y*16,w,h);
  rect(x*5,y*17,w,h);
  
  //SECOND RIGHT
  rect(w*4,0,w,h);
  rect(w*4.5,h,w,h);
  rect(w*5,h*2,w,h);
  rect(w*5.5,h*3,w,h);
  rect(w*6,h*4,w,h);
  rect(w*6.5,h*5,w,h);
  rect(w*7,h*6,w,h);
  
  //THIRD RIGHT
  rect(w*6,0,w,h);
  rect(w*6.5,y,w,h);
  rect(w*7,y*2,w,h);
  rect(w*7.5,y*3,w,h);
  rect(w*8,y*4,w,h);
  rect(w*8.5,y*5,w,h);
  rect(w*9,y*6,w,h);
  
  //FOURTH DOWN
  rect(-x,y*15,w,h);
  rect(0,y*16,w,h);
  rect(x,y*17,w,h);
  rect(x*2,y*18,w,h);
  rect(x*3,y*19,w,h);
  rect(x*4,y*20,w,h);
  rect(x*5,y*21,w,h);
  
  //FIFTH DOWN
  rect(-x,y*19,w,h);
  rect(0,y*20,w,h);
  rect(x,y*21,w,h);
  rect(x*2,y*22,w,h);
  rect(x*3,y*23,w,h);
  rect(x*4,y*24,w,h);
  
  //FOURTH RIGHT
  rect(x*16,0,w,h);
  rect(x*17,y,w,h);
  rect(x*18,y*2,w,h);
  rect(x*19,y*3,w,h);
  
  //first column
  rect(w*5,y*10,w,h);
  rect(w*5,y*13,w,h);
  rect(w*5,y*16,w,h);
  rect(w*5,y*19,w,h);
  rect(w*5,y*22,w,h);
  
  //second column
  rect(w*7,y*10,w,h);
  fill(180,169,84);
  rect(w*7,y*13,w,h);
  fill(0,198,193);
  rect(w*7,y*16,w,h);
  fill(130,63,157);
  rect(w*7,y*19,w,h);
  stroke(255);
  fill(0);
  rect(w*7,y*22,w,h);

stroke(0);

//third column
fill(81,86,178);
 rect(w*9,y*10,w,h);
 fill(198,73,0);
  rect(w*9,y*13,w,h);
  stroke(255);
  fill(0);
  rect(w*9,y*16,w,h);
  rect(w*9,y*19,w,h);
  rect(w*9,y*22,w,h);

}





