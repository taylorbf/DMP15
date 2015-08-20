/* ONLINE PORTION FINAL
   FALL 2015
   PRECIOUS KOLLOCK DMP 2015
*/
Knob[] action = new Knob[8];
Knob[] swing = new Knob[5];

void setup() {
  size(700,700);
  noStroke();
  background(45);
  rectMode(CENTER);
  for (int i=0;i < action.length;i++){
    action[i] = new Knob(0,0);
  }
  for (int p=0;p < swing.length;p++){
    swing[p] = new Knob(250,250);
  }
}

void draw() {
  for (int i=0;i<1;i++) {
    action[i].fullSpin(200,0);
    action[i].move(100,100);
  }  
  for (int p=0;p<5;p++) {
    swing[p].spin(0,200);
  }

}

class Knob {
  
  float centerX = 0;
  float centerY = 0;
  float shapeWidth = 100;
  float shapeHeight = 100;
  float mX = 0;
  float mY = 0;
  float angle;
  float jitter;
  float spinX = 0;
  float spinY = 0;
  float red;
  float green;
  float blue;
  float radians;
  
  Knob (float x, float y) {
    
   centerX = x;
   centerY = y;
    
  }
  
  void move(int r, int b) {
    
    float red = r;
    float green = random(150,255); 
    float blue = b;
    
    fill(255,20);
    smooth();
    noStroke();
    rect(centerX,centerY,shapeWidth,shapeHeight);
    fill(0,20);
    ellipse(centerX,centerY,shapeWidth,shapeHeight);
    fill(red,green,blue,30);
    rect(centerX,centerY,shapeWidth,20);
    fill(0);
    rect(centerX,centerY,shapeWidth,8);
    
    mX = random(0,1);
    mY = random(0,1);
    centerX = centerX + mX;
    centerY = centerY + mY;
    
  if (centerX > 700 && centerY > 700) {
    centerX = 0;
    centerY = 0;
    }
  }

  void spin(int r, int b) {
    
    float red = r;
    float green = random(255);
    float blue = b; 
    
    centerX = spinX;
    centerY = spinY;
        
    spinX = spinX + mX;
    spinY = spinY + mY;
    // during even-numbered seconds (0, 2, 4, 6...)
    if (second() % 2 == 0) {  
      jitter = random(-0.1, 0.1);
    }
    angle = angle + jitter;
    float c = cos(angle);
    translate(100,100);
    rotate(c);
    //fill(255,3);
    //rect(spinX,spinY,shapeWidth,shapeHeight);
    fill(255,20);
    smooth();
    noStroke();
    rect(spinX,spinY,shapeWidth,shapeHeight);
    fill(0,20);
    ellipse(spinX,spinY,shapeWidth,shapeHeight);
    fill(red,green,blue,30);
    rect(spinX,spinY,shapeWidth,20);
    fill(0);
    rect(spinX,spinY,shapeWidth,8);
    
  }

  void fullSpin(int r, int b) {
    
    float red = r;
    float green = random(100,255);
    float blue = b;
    
    // calculate x & y
    float x = sin(radians) * 25 + 50;
    float y = cos(radians) * 25 + 50;
    // draw circle
    noStroke();
    fill(255,20);
    smooth();
    noStroke();
    rect(x+centerX,y+centerY,shapeWidth,shapeHeight);
    fill(0,20);
    ellipse(x+centerX,y+centerY,shapeWidth,shapeHeight);
    fill(red,green,blue,30);
    rect(x+centerX,y+centerY,shapeWidth,20);
    fill(0);
    rect(x+centerX,y+centerY,shapeWidth,8);
    // add an increment to our radial position
    radians = radians + 0.1;
    
  if (centerX > 700 && centerY > 700) {
    centerX = 0;
    centerY = 0;
    }
  }
}   