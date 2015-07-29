float a= 30;
float b= 20;
float i = 1.01;

void setup(){

size (800,400);
background(255);
}

void draw() {
 
  for (int i=0; i<100; i=i+1) {

  fill(random(255),random(40),random(255),30);
  ellipse(i * 30,30,random(30),random(200));
 
 if (i > 0 ){
  fill(255,40,255,30);
  ellipse(i * 30,300,random(30),random(200));  
 
 }
  
  
  } 

}


