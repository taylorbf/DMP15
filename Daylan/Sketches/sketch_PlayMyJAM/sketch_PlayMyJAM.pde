//PROPERTIES                  //METHOD
//Color                       //Spin
//Size                        //Scratch
//rotationSpeed               //Color


//int recColor = rec(color(HSB), random(230), random(200));
//int recSpin = 

Spin rec = new Spin();


void setup () {
  size (800, 800);
  background(255);
  
//Spin[] jams = new Spin [100];
  
  for (int i = 0; i < 100; i + 1){
  jams[i] = new Spin();
  }

}

void draw() {

  background(255);
  //TurnTable
  fill(250, 140, 5);//Rect 1
  rect(190, 190, 420, 420);
  
  fill(250, 200, 50);//Rect 2
  rect(200, 200, 399, 399);
  
  rec.drawRecord();
  
}

class Spin {
  float recX = 400;
  float recY = 200;
  float recSize = 5;
  float speed = 0.1;
  float myRotation = 0;
  String mytext = "Ben and the Crew";
  float change = 1;
 
  
  
  Spin(){
    
    
  
  }

  void drawRecord(){
 //ROATAION
    pushMatrix();
    translate(400,400);
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
    ellipse(0, 0, recY, recY);
  
    fill(255);//white
    ellipse(0, 0, recY+1, recY+1);
  
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
    
     void changeRec() {
  
     fill(255,0,9,10);//Main Rec
     ellipse(0, 0, width/2, height/2);
  
  
      fill(255, 0, 0, 30);//white
      smooth();
      ellipse(0, 0, 350, 350);
    
      fill(0, 255, 0, 2);//white
      smooth();
      noStroke();
      ellipse(0, 0, 300, 300);
    
      fill(255, 255, 255, 6);//white
      smooth();
      ellipse(0, 0, recY, recY);
    
      fill(255);//white
      ellipse(0, 0, recY+1, recY+1);
    
      fill(2);//inner black
      ellipse(0, 0, 15, 15);
    
      noFill();
      smooth();
      stroke(255);
      ellipse(0, 0, 300, 300);
   }
      

      //textSize(30);
      //text(mytext,400,400);
  }


void mousePressed() {
  rec.speed = 0;
  rec.change = 1;
  

}
  
void mouseReleased(){
  rec.speed = 1;

  


}













