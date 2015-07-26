void setup() {
  size (980, 500);
  background(255);
}

void draw() {
  fill(255);
  noStroke();
  if (mousePressed) {
    //fill(random(255),200,255,45);
    //ellipse(pmouseX,pmouseY,mouseX,mouseY);
    
    fill(random(255),200,255,45);
    ellipse(random(width),random(height),49,42);
    
    fill(random(150),random(255),45,4);
    ellipse(random(width),random(height),49,42);
    
    fill(random(255),random(255));
    ellipse(random(width),random(height),random(50),random(42));
    
    fill(random(255),200,255,45);
    ellipse(random(width),random(height),49,42);
    
    
    //stroke(1);
    //fill(random(340), 56, 240,60);
    //quad(pmouseX,pmouseY,mouseX,mouseY,mouseX,pmouseY,mouseX,mouseY);
}

    if (mousePressed && keyPressed) {
       if (key=='a'){
         point(mouseX,mouseY);
       }
     fill(random(255),200,255);
    stroke(.5); 
     rect(random(980), random(500), random(20),20);
     
   //*
  }
  
  
}
