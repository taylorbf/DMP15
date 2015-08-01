Diamond blueDmd = new Diamond(200,100,10); 
Diamond blueDmd2 = new Diamond(40,90,10); 
Diamond wholeShape[] = new Diamond[100];
 
void setup(){
  size(400,400);
  for (int i=0;i < wholeShape.length;i++){
   wholeShape[i] = new Diamond(200,100,10);

 }
}
 
void draw(){
  background(255);
  //diamonds all over
for (int i=0; i< wholeShape.length;i++) {
//i * controls spacing of diamond
 wholeShape[i].diamondOut(i*100,200);
 wholeShape[i].diamondIn(i*100,200);
 wholeShape[i].diamondOut(100,i*100);
 wholeShape[i].diamondIn(100,i*100);
 wholeShape[i].diamondOut(300,i*100);
 wholeShape[i].diamondIn(300,i*100);
 wholeShape[i].diamondOut(i*100,400);
 wholeShape[i].diamondIn(i*100,400);
 wholeShape[i].diamondOut(i*100,0);
 wholeShape[i].diamondIn(i*100,0);
 
 }

 
 //diamondOut(mouseX, mouseY);
 //diamondIn(mouseX, mouseY);
 
}


class Diamond{
  int diamondX = 200;
  int diamondY = 200;
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







