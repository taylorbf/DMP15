Diamond blueDmd = new Diamond(); 
Diamond blueDmd2 = new Diamond(); 

void setup(){
  size(400,400);
}

void draw(){
 background(255); 
 
 blueDmd.diamondOut(mouseX,mouseY);
 blueDmd.diamondIn(mouseX,mouseY);
 blueDmd2.diamondOut(200,200);
 blueDmd2.diamondIn(200,200); 
 //diamondOut(mouseX, mouseY);
 //diamondIn(mouseX, mouseY);
 
}

class Diamond{
  int diamondX = 100;
  int diamondY = 10;
  color colorDiamond = color(100,100,20,20);
  
  Diamond(){
  
  }
 
void diamondOut (int x1, int y1){
  
    fill(100,155,255);
    stroke(0);
    beginShape();
    vertex(x1 + 0, y1 + -50);
    vertex(x1 + 50,y1 + 0);
    vertex(x1+ 0,y1 + 50);
    vertex(x1 + 0,y1 + -50);
  endShape();
  
  beginShape();
    vertex(x1 + 0,y1 + -50);
    vertex(x1 + -50,y1 + 0);
    vertex(x1 + 0,y1 + 50);
    vertex(x1 + 0,y1+ -50);
  endShape();

}

void diamondIn(int x2, int y2){

    fill(255,255,255,random((80)));
  beginShape();
    vertex(x2+ 0,y2+ -20);
    vertex(x2 +-50,y2+0);
    vertex(x2 +0,y2+25);
    vertex(x2+50,y2+0);
    vertex(x2+ 0,y2+-20);
    vertex(x2+50,y2+0);
  endShape();

  }

}







