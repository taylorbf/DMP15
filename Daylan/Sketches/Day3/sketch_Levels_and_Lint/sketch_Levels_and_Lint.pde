int x = 15;
int y = 20;
int x1 = 30;
int y1 = 40;

void setup() {
  size(900,500);
  background(255);
  noCursor();
}

void draw() {
  fill(0,random(255),80);
  ellipse(x,mouseY,250,2);
  
  fill(random(255),0,80);
  ellipse(x*12,mouseY,250,2);
  
  fill(0,0,random(255));
  ellipse(x*20,mouseY,250,2);
  
  fill(0,random(200),80);
  ellipse(x*30,mouseY,250,2);
  
  fill(random(200),0,80);
  ellipse(x*40,mouseY,250,2);
  
  fill(0,0,random(200));
  ellipse(x*55,mouseY,250,2);
  
   fill(0,random(255),80);
   ellipse(mouseX,y,250,2);
  
  fill(random(255),0,80);
  ellipse(mouseX,y*12,250,2);
  
  fill(0,0,random(255));
  ellipse(mouseX,y*20,250,2);
  
  fill(0,random(200),80);
  ellipse(mouseX,y*30,250,2);
  
  fill(random(200),0,80);
  ellipse(mouseX,y*40,250,2);
  
  fill(0,0,random(200));
  ellipse(mouseX,y*55,250,2);

  fill(random(255),random(255),random(255));
  ellipse(random(900),random(500),random(9),random(5));
  
  if (mousePressed) {
      background(0);
     
      
  }
  
    
}
