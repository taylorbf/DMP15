//PROPERTIES                  //METHOD
//Color                       //Spin
//Size                        //Scratch
//rotationSpeed               //Color

 
Spin[] crate = new Spin[8]; //Array
//Spin rec = new Spin();

void setup () {
  size (800, 800);
  background(255);
  
for (int i = 0; i < crate.length; i++) {
  crate [i] = new Spin();
  crate[i].recX = random(800);
  crate[i].recY = random(900);
  
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
}

class Spin {
  float recX = 400;
  float recY = 400;
  float recSize = 5;
  float speed = 0.1;
  float myRotation = 0;
 
  
  Spin(){
    
    
  
  }

  void drawRecord(){
 //ROTATION
    pushMatrix();
    translate(recX,recY);
    rotate(myRotation);
  
    fill(2);
    ellipse(0, 0, width/2, height/2);
  
  
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


void mousePressed() {
       rec.speed = 0;
      
    }
  
void mouseReleased(){
       rec.speed = 1;
    
    }

}












