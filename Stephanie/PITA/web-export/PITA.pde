void setup() {
  size(800,800);
  frameRate(65);
}

void draw() {
  fill(100,90);
  noStroke();
  rect(0,0,width,height);
  strokeCap(SQUARE);
}

void mouseMoved() {
  stroke(random(100,255),random(100,255),random(100,255));
  strokeWeight(7);

  line(mouseX,mouseX,mouseX,mouseY);  

  if (keyPressed) {
    if(key == 'q') {
  triangle(mouseX,mouseY-20,mouseX-50,mouseY-50,mouseX+50,mouseY-50);
}
  }
  if (keyPressed) {
   if(key == 'z') {
  stroke(0); 
  triangle(mouseX,mouseY+40,mouseX+50,mouseY+70,mouseX-50,mouseY+70);
   }
  }
  
  if (keyPressed) {
   if (key == 'w'){
    fill(random(100,255),random(100,255),random(100,255));
    triangle(mouseX,mouseY-20,mouseX-50,mouseY-50,mouseX+50,mouseY-50);
    fill(0); 
    stroke(0);
  triangle(mouseX,mouseY+40,mouseX+50,mouseY+70,mouseX-50,mouseY+70);
   } 
  }
  
  //have both triangles at the same time
  /*if (mousePressed) {
    stroke(random(100,255),random(100,255),random(100,255));
    triangle(mouseX,mouseY-20,mouseX-50,mouseY-50,mouseX+50,mouseY-50);
    stroke(0); 
  triangle(mouseX,mouseY+40,mouseX+50,mouseY+70,mouseX-50,mouseY+70);
  } 
  
  
void mouseDragged() {
  triangle(mouseX,mouseY-20,mouseX-50,mouseY-50,mouseX+50,mouseY-50);
stroke(0); 
  triangle(mouseX,mouseY+40,mouseX+50,mouseY+70,mouseX-50,mouseY+70);
  
  void mouseReleased () {
    //triangles fill in
  */
}




  


  



