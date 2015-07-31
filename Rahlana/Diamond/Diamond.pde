int diamondX = 100;
int diamondY = 10;
color colorDiamond = color(100,100,20,20);
PShape s;

void setup(){
  size(400,400);
  
}

void draw(){
 background(255);
  diamondOut(mouseX, mouseY);
  diamondIn(mouseX, mouseY);
  
    if (key=='z'){
   
   fill(200,200,20,20);
   beginShape();
    vertex(200,180);
    vertex(150,200);
    vertex(200,225);
    vertex(250,200);
    vertex(200,180);
    vertex(250,200);
  endShape(); 
   } 
   
  if (mousePressed){
  stroke(0);
  beginShape();
    vertex(200 - diamondX,150);
    vertex(250 - diamondX,200);
    vertex(200- diamondX,250);
    vertex(200- diamondX,150);
  endShape();
  
  beginShape();
    vertex(200 + diamondX,150);
    vertex(150 + diamondX,200);
    vertex(200 + diamondX,250);
    vertex(200 + diamondX,150);
  endShape();
     
   }
   
   
}
//need to change coordinates to follow mouse
void diamondOut (int x1, int y1){
  
  fill(100,155,255,random((10)));
  stroke(0);
  beginShape();
    vertex(x1 + 200, y1 + 150);
    vertex(x1 + 250,y1 + 200);
    vertex(x1+ 200,y1 + 250);
    vertex(x1 + 200,y1 + 150);
  endShape();
  
  fill(10,random(100),random(255),random((10)));
  beginShape();
    vertex(x1 + 200,y1 + 150);
    vertex(x1 + 150,y1 + 200);
    vertex(x1 + 200,y1 + 250);
    vertex(x1 + 200,y1+ 150);
  endShape();

}

void diamondIn(int x2, int y2){

  fill(10,50,100,random((20)));
  beginShape();
 
    vertex(x2+ 200,y2+ 180);
    vertex(x2 +150,y2+200);
    vertex(x2 +200,y2+225);
    vertex(x2+250,y2+200);
    vertex(x2+ 200,y2+180);
    vertex(x2+250,y2+200);
  endShape();

}






