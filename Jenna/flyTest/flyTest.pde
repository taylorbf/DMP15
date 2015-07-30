
float flyX= 300;
float flyY= 200;
float flyAlpha= 255;
float flySize=5;




void setup(){
  size(300,300);
  noStroke();



}

void draw (){
  background(255);
 fill(0,flyAlpha);
 ellipse(flyX,flyY,flySize,flySize);
 

 flyX=flyX+random(-2,2);
 flyY=flyY+random(-2,2);

 if(flyX>width){
   flyX=flyX-20;
   background(255,255,0);
 }
 if(flyX<0){
   flyX=flyX+20;
   background(255,255,0);
 }

if (flyY>height){
  flyY=flyY+20;
  background(255,255,0);
}
   if(flyY<0){
   flyY=flyY+20;
   background(255,255,0);
  
   }
   
}
