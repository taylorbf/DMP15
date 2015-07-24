
void setup() {
  
  size(300,300);
  
}
void draw() {
  fill(mouseY,mouseX,mouseX,mouseY);
  rect(0,0,width,height);
  
  fill (200,mouseY,mouseX);
  ellipse(40,40,10,10);
  ellipse(44,44,10,10);
  ellipse(48,48,10,10);
  ellipse(mouseX,mouseY,30,10);

}



