void setup(){
  size(500,500);
  background (0);



}
void draw () {
 
  fill(20,255,100,5);
  rect(mouseX,mouseY,mouseX,mouseY);
  stroke(0);
  strokeWeight(4);
 
  

  {
     if (mousePressed) {
       background(20,255,100);
         fill(0,0,0,15);
        rect(mouseX,mouseY,mouseX,mouseY);
     
     }}  
}

