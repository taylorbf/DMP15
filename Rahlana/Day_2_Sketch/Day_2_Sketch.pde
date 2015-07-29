
void setup (){
  size(500,500);
  background(255);
  
}

void draw() {
 
  if(mousePressed && keyPressed){
    
  if (key=='a'){
    stroke(0,255,30,240);
    line(mouseX,mouseY,mouseX + random(-100, 100),mouseY +random(10));
    
    }
    
  if (key=='d'){
    fill(255,40,255,30);
    noStroke();
    ellipse(mouseX,mouseY,random(30),random(200));
    
    }
  
   if (key=='x'){
    fill(100,80,255,30);
    noStroke();
    rect(mouseX,mouseY,random(30),random(200), 20);
    }
    
       if (key=='x'){
    fill(100,80,255,30);
    noStroke();
    rect(mouseX,mouseY,random(30),random(200), 20);
    }
    
    

  }


}
