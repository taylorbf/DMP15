line grid=new line();
boxtypeA box1=new boxtypeA();
boxtypeB box2= new boxtypeB();


void setup(){
size(300,300);
background(255);
}

void draw(){
  
  grid.lines();
  box1.boxA();

}

class line {
  

void lines(){
  
 line(45,0,45,300);
 stroke(0);
 strokeWeight(4);
  
 line(0,45,300,45);
 stroke(0);
 strokeWeight(4);
 
 line(90,0,90,300);
 stroke(0);
 strokeWeight(4);
 
 line(0,90,300,90);
 stroke(0);
 strokeWeight(4);
 
 line(170,0,170,300);
 stroke(0);
 strokeWeight(4);
 
 line(0,170,300,170);
 stroke(0);
 strokeWeight(4);
 
 line(250,0,250,300);
 stroke(0);
 strokeWeight(4);
 
 line(0,250,300,250);
 stroke(0);
 strokeWeight(4);
}}

class boxtypeA {
  
void boxA(){
  float boxX=(0);
  float boxY=(0);
  float boxH=(80);
  float boxW=(80);
  
}}

class boxtypeB {
  float boxX=(0);
  float boxY=(0);
  float boxH=(40);
  float boxW=(80);

}



  
  
  

  

