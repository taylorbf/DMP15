Diamond blueDmd = new Diamond(200,100,10); 
Diamond blueDmd2 = new Diamond(40,90,10); 

void setup(){
  size(400,400);
}
 
void draw(){

blueDmd2.diamondOut(200,265);
 blueDmd2.diamondIn(200,265);
 blueDmd.diamondOut(mouseX,mouseY);
 blueDmd.diamondIn(mouseX,mouseY);
 blueDmd2.diamondOut(200,200);
 blueDmd2.diamondIn(200,200); 
 blueDmd2.diamondOut(200,330);
 blueDmd2.diamondIn(200,330);
 blueDmd2.diamondOut(256,265);
 blueDmd2.diamondIn(256,265);
 blueDmd2.diamondOut(148,265);
 blueDmd2.diamondIn(148,265);
 //diamondOut(mouseX, mouseY);
 //diamondIn(mouseX, mouseY);
 
}


class Diamond{
  int diamondX = 100;
  int diamondY = 10;
  int diamondSize = 100;
  float dmdRed = 200;
  float dmdGreen = 100;
  float dmdBlue = 0;
  
  Diamond(int r, int g, int b){
  float dmdRed= r;  
  float dmdGreen= g;
  float dmdBlue= b;
  
  }
 
void diamondOut (int x1, int y1){
  
    fill(random(dmdRed),random(dmdGreen),150);
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

    fill(dmdRed,255,255,random((80)));
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







