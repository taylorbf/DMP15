float a= 40;
float b= 30;
float i = 1.01;

void setup(){

size (400,400);

}

void draw() {

  fill(random(255),random(40),random(255),30);
  rect (0,0,a,b);
  rect (a,b,a*2,b*2);
  rect (a*2+a,b*2+b,a*3,b*3);
  rect (a*3+a*2+a,b*3+b*2+b,a*4,b*4);
  
 
  a = a + i;
  b = b + i;
  
  if (b > 400 || b < 1) {
    
    i = i * -1;
 
 } 

  
  } 
