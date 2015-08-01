box yellow=new box();
box red=new box();
box blue=new box();
box blue2=new box();
box blue3=new box();
box red2= new box();
box red3=new box();
box red4=new box();
box red5=new box();
box red6=new box();
box yellow2=new box();
box blue4=new box();
box yellow3=new box();
box blue5=new box();
box yellow4= new box();
box yellow5=new box();
box red7=new box();
box yellow6=new box();
box blue6=new box();
box yellow7=new box();
box yellow8=new box();
box yellow9=new box();

void setup(){
  
 size(300,300);
 background(255);
 
line(45,0,45,300);
 stroke(0);
 strokeWeight(4);
 
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




 }
 
 void draw(){
yellow.box2();
red.box3(); 
blue.box1();
blue2.box4();
blue3.box5();
red2.box6();
red3.box7();
red4.box8();
red5.box9();
red6.box10();
yellow2.box11();
blue4.box12();
yellow3.box13();
blue5.box14();
yellow4.box15();
yellow5.box16();
red7.box17();
yellow6.box18();
blue6.box19();
yellow7.box20();
yellow8.box21();
yellow9.box22();
}
  
  
  

class box {
  
color boxColor=color(255,0,0);
color boxtwoColor=color(255,255,0);
color boxthreeColor=color(0,0,255);

float boxX=90;
float boxY=90;
float boxH=80;
float boxW=80;

int timer = 0;



void box1()
{if (timer > 75) {
     fill(boxthreeColor); 
     rect(boxX,boxY,boxH,boxW);
     
}else {
     fill(boxColor);
       
     timer++;
  
       
     
  }}
  
 void box2(){
   if (timer > 150) {
     fill(boxColor); 
     rect(boxX,boxY+160,boxH,boxW);
   }else {
     fill(boxColor);
       
     timer++;
   
       
     }}
     
  void box3() {
  if (timer > 200) {
     fill(boxtwoColor); 
     rect(boxX+80,boxY+80,boxH,boxW);
   } else {
     fill(boxColor);
       
     timer++;
     
     


}
}

void box4(){
  if (timer>250) {
    fill(boxthreeColor);
    rect(boxX+160,boxY+160,boxH-15,boxW-15);
  } else {
    fill (boxColor);
    
    timer++;
  
 }}
 
 void box5(){
   if (timer>300) {
   fill (boxthreeColor);
   rect(boxX-45,boxY-45,boxH-35,boxW-35);
   }else {
    fill (boxColor);
    
    timer++;}
 }
 
 void box6(){
   if (timer>350){
     fill (boxColor);
     rect (boxX-90,boxY-90,boxH-35,boxW-35);
   }else{ fill (boxColor);
   timer++;}
 }
 
 void box7(){
   if (timer>370){
     fill (boxColor);
     rect (boxX+162,boxY-45,boxH-35,boxW-35);
   }else{ fill (boxColor);
   timer++;}
 
 }
 void box8(){
   if (timer>390){
     fill (boxthreeColor);
     rect(boxX-90,boxY+162,boxH-35,boxW-35);
   }else{fill (boxColor);
   timer++;}}
   
   void box9(){
     if (timer>405){
     fill (boxColor);
     rect(boxX+80,boxY,boxH,boxW);
   }else{fill (boxColor);
   timer++;}}
   
   void box10(){
     if (timer>405){
     fill (boxColor);
     rect(boxX-43,boxY,boxW-35,boxH);
   }else{fill (boxColor);
   timer++;}}
   
   void box11(){
     if (timer>420){
     fill (boxthreeColor);
     rect(boxX+162,boxY,boxW,boxH);
   }else{fill (boxColor);
   timer++;}}
   
    void box12(){
     if (timer>425){
     fill (boxthreeColor);
     rect(boxX+162,boxY-90,boxW-35,boxH-35);
   }else{fill (boxColor);
   timer++;}}
   
    void box13(){
     if (timer>430){
     fill (boxColor);
     rect(boxX-43,boxY,boxW-35,boxH);
   }else{fill (boxColor);
   timer++;}}
   
    void box14(){
     if (timer>435){
     fill (boxthreeColor);
     rect(boxX-45,boxY+84,boxW-35,boxH);
   }else{fill (boxColor);
   timer++;}}
   
     void box15(){
     if (timer>440){
     fill (boxthreeColor);
     rect(boxX-45,boxY-45,boxW-35,boxH-35);
   }else{fill (boxColor);
   timer++;}}
   
   void box16(){
     if(timer>440){
       fill (boxtwoColor);
       rect(boxX-90,boxY-45,boxW-35,boxH-35);
       
    }else{fill (boxColor);
   timer++;}}
   
   void box17(){
     if(timer>445){
       fill (boxColor);
       rect(boxX,boxY-90,boxW,boxH-35);
       
    }else{fill (boxColor);
   timer++;}}
   
     void box18(){
     if(timer>450){
       fill (boxtwoColor);
       rect(boxX,boxY-45,boxW,boxH-35);
       
    }else{fill (boxColor);
   timer++;}}
   
    void box19(){
     if(timer>455){
       fill (boxthreeColor);
       rect(boxX+80,boxY-45,boxW,boxH-35);
       
    }else{fill (boxColor);
   timer++;}}
   
   void box20(){
     if(timer>460){
       fill (boxtwoColor);
       rect(boxX-45,boxY+165,boxW-35,boxH-35);
     
         
       
    }else{fill (boxColor);
   timer++;}}
   
     
       void box21(){
         if(timer>465){
       fill (boxtwoColor);
       rect(boxX-45,boxY-90,boxW-35,boxH-35);
     
         
       
    }else{fill (boxColor);
   timer++;}}
   
   void box22(){
     
      if(timer>470){
       fill (boxtwoColor);
       rect(boxX-90,boxY+82,boxW-35,boxH);
     
         
       
    }else{fill (boxColor);
   timer++;}}
     
         
     
    
}



  



