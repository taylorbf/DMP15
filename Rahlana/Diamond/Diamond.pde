void setup(){
  size(400,400);
}

void draw(){
  diamondL();
  diamondS();
  
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
}

void diamondL (){
  
  fill(100,155,255,random((10)));
  stroke(0);
  beginShape();
    vertex(200,150);
    vertex(250,200);
    vertex(200,250);
    vertex(200,150);
  endShape();
  
  fill(10,random(100),random(255),random((10)));
  beginShape();
    vertex(200,150);
    vertex(150,200);
    vertex(200,250);
    vertex(200,150);
  endShape();

}

void diamondS(){

  fill(10,50,100,random((20)));
  beginShape();
    vertex(200,180);
    vertex(150,200);
    vertex(200,225);
    vertex(250,200);
    vertex(200,180);
    vertex(250,200);
  endShape();

}

