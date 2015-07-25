float ellipse;
void setup() {
  
  size(300,300);
  
}

int x = 0;
int y = 10;

void draw() {
  fill(mouseY,mouseX,mouseX,mouseY);
  rect(0,0,width,height);
  
  fill(520,200,200);
  rect(mouseX,0,20,300);
  
  fill(520,200,200);
  rect(0,mouseY,300,20);
  
  fill(320,320,320);
  ellipse(random(300),random(300),mouseY,random(20));

 
}
