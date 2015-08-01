

//PROPERTIES                  //METHOD
//Color                       //Spin
//Size                        //Scratch
//rotationSpeed               //Color



//int recColor = rec(color(HSB), random(230), random(200));
//int recSpin = 
Spin[] crate = new Spin[2]; 

import processing.sound.*;


SoundFile soundfile = new SoundFile(this, "jdilla.mp3");
SoundFile soundfile2 = new SoundFile(this, "jdilla.mp3");


void setup () {
  size (800, 800);
  background(255);
  


for (int i = 0; i < crate.length; i++) {
  crate [i] = new Spin();
  crate[i].recX = 400;
  crate[i].recY = 400;
  
  crate[i].drawRecord();
  }
}


void draw() {

  background(255);
  
  fill(250, 140, 5);//Rect 1
  rect(190, 190, 420, 420);
  
  fill(250, 200, 50);//Rect 2
  rect(200, 200, 399, 399);
  
  for (int i = 0; i < crate.length; i++) {
    crate[i].drawRecord();
  
  }
  
  soundfile.rate(crate[0].currentrate); 
  soundfile2.rate(crate[1].currentrate); 
}

class Spin {
  float recX = 400;
  float recY = 400;
  float recSize = 5;
  float speed = 0.1;
  float myRotation = 0;
  color tColor = color(random(255),random(255), random(255));
  float currentrate = 1;

  Spin(){
 
  
  }

  void drawRecord(){
 //ROATAION
    pushMatrix();
    translate(recX,recY);
    rotate(myRotation);
    
    fill(2);
    ellipse(0, 0, width/2, height/2);
    
    if (mousePressed){
      
       currentrate = currentrate / 1.2;
      fill(tColor);
      ellipse(0, 0, width/2, height/2);
       myRotation = 0;
      
        currentrate = currentrate + (mouseX-pmouseX)/5;
     } else {
        currentrate = (currentrate*4 + 1) / 5;
     }
     
     
    
  
    fill(255, 255, 255, 30);//white
    smooth();
    ellipse(0, 0, 350, 350);
  
    fill(255, 255, 255, 2);//white
    smooth();
    noStroke();
    ellipse(0, 0, 300, 300);
  
    fill(255, 255, 255, 6);//white
    smooth();
    ellipse(0, 0, 200, 200);
  
    fill(255);//white
    ellipse(0, 0, 201, 201);
  
    fill(2);//inner black
    ellipse(0, 0, 15, 15);
  
    noFill();
    smooth();
    stroke(255);
    ellipse(0, 0, 300, 300);
    
    popMatrix();
    
     myRotation = myRotation + speed;
    if (myRotation > TWO_PI) {
       myRotation = 0; 
      }
      
       
    }
}
/*
void mousePressed() {
       crate.speed = 0;
       
    
  
  //recRed = recRed-4;
  //recGreen = recGreen/2;
  //recBlue = recBlue/2;
  
  
}
  
void mouseReleased(){
       rec.speed = 1;
       translate(400,400);
       fill(0,random(255),0);
       ellipse(0, 0, width/2, height/2);
*/





/*
void mousePressed() {
 
    soundfile.rate(currentrate); 
  
}

void mouseReleased() {
  
    soundfile.rate(currentrate); 
 
} */