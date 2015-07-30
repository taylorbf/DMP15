color boxColor=color(255,0,0);
color boxtwoColor=color(255,255,0);
color boxthreeColor=color(0,0,255);
float boxX=90;
float boxY=90;
float boxH=80;
float boxW=80;
int timer = 0;


void setup(){
  
  size(300,300);
  background(255);
}

void draw(){

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



if (timer > 75) {
     fill(0,0,255); 
     rect(boxX,boxY,boxH,boxW);
  } else {
     fill(boxColor);
       
     timer++;
  }
  
  if (timer > 150) {
     fill(255,0,0); 
     rect(boxX,boxY+160,boxH,boxW);
  } else {
     fill(boxColor);
       
     timer++;
  }
  
   if (timer > 225) {
     fill(255,255,0); 
     rect(boxX+80,boxY+80,boxH,boxW);
  } else {
     fill(boxColor);
       
     timer++;
  }
  
 }



  



