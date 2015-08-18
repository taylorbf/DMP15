//http://www.openprocessing.org/sketch/48962
// create an empty array for 100 MovingCircle objects
MovingCircle[] myCircleArray = new MovingCircle[100];
 
void setup() {
  size(800, 800);
  smooth();
   
  // and actually create the objects and populate the
  // array with them
  for(int i=0; i<myCircleArray.length; i++) {
    myCircleArray[i] = new MovingCircle(width/2,height/2,10);  
  }
   
   
}
 
void draw() {
   
  background(0);
  if (mousePressed ==true){
  // iterate through every moving circle
  for(int i=0; i<myCircleArray.length; i++) {
     
    myCircleArray[i].update();
    myCircleArray[i].drawCircle();
      
  }  
   
}

else { 
  for(int i=0; i<myCircleArray.length; i++) {
    myCircleArray[i] = new MovingCircle(width/2,height/2,10);  
  }
  for(int i=0; i<myCircleArray.length; i++) {
    myCircleArray[i] = new MovingCircle(mouseX,mouseY,10);  
  }

}  
  
}

 
class MovingCircle {
 
  float x;
  float y;
  float xSpeed;
  float ySpeed;
   
  float circleSize;
 
  MovingCircle(float xpos, float ypos, float csize) {
    x = xpos;
    y = ypos;
    circleSize = csize;
     
    xSpeed = random(-10, 10);
    ySpeed = random(-10, 10);
     
  }
 
  void update() {
    x += xSpeed;
    y += ySpeed; 
  }
    
  void drawCircle() {
     
    fill(100,20,255,(40));
    ellipse(x, y, circleSize+100, circleSize+100);
    fill(100,20,255,(40));
    ellipse(x, y, circleSize+40, circleSize+40);
    fill(200,random(200),0,(40));
    ellipse(x, y, circleSize+80, circleSize+80);
     
  }
  

   
   
}

