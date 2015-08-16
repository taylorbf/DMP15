/* Movement Detection
   Goucher - Digital Media Programming FA14
   Ben Taylor
   Derived from Mirror by Daniel Shiffman.
*/
//&&http://www.openprocessing.org/sketch/48962
MovingCircle[] myCircleArray = new MovingCircle[100];
Square wholeShape[] = new Square[100];
import processing.video.*;

//Define pixilation size, initialize cols/rows/video variables
int cellSize = 80;
int cols, rows;
Capture video;
// Array to store prev frame data
color[] pastFrame;

void setup() {
  size(960, 720);
  smooth();
  background(0);
  frameRate(30);
  
  for (int i=0;i < wholeShape.length;i++){
     wholeShape[i] = new Square(200,100,10);
  }
  for(int i=0; i<myCircleArray.length; i++) {
     myCircleArray[i] = new MovingCircle(width/2,height/2,10);  
  }
    cols = width / cellSize;
    rows = height / cellSize;
    noStroke();
    fill(255);
  
  // fill prev frame with color type
  pastFrame = new color[cols*rows];

  // Start capturing default video input
  video = new Capture(this, width, height);
  video.start();  
  
}


void draw() { 
  
  fill(0,20);
  rect(0,0,width,height);
  if (video.available()) {
    video.read();
    video.loadPixels();
  
    // Begin loop for columns
    for (int i = 0; i < cols; i++) {
      // Begin loop for rows
    for (int j = 0; j < rows; j++) {
      
        // Where are we, pixel-wise?
        int x = i*cellSize;
        int y = j*cellSize;
        int loc = (video.width - x - 1) + y*video.width; // Reversing x to mirror the image
      
        // Make a new color from this pixel
        float r = red(video.pixels[loc]);
        float g = green(video.pixels[loc]);
        float b = blue(video.pixels[loc]);
        color c = color(r, g, b);
      
        //Compare brightness of this frame to last frame       
        int bdiff = abs(int(brightness(c)) - int(brightness(pastFrame[i*rows+j])));

        //Draw a rectangle with transparency equal to that difference
        fill(#00aaff,bdiff);
        rect(x, y, cellSize, cellSize,(20));
    
        //This frame becomes prev frame
        pastFrame[i*rows+j] = c;
  
      }
    }
  }

   for (int i=0; i< wholeShape.length;i++) {
//i * controls spacing of diamond
   for (int j=0; j< 10 ;j++){
   wholeShape[i].squareShape(i*160,160*j);
  
   }
  }

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
void mouseDragged() {
     for(int i=0; i<myCircleArray.length; i++) {
      myCircleArray[i] = new MovingCircle(mouseX,mouseY,10);
      myCircleArray[i].update();
      myCircleArray[i].drawCircle();  
    }
  }


class Square{
  int squareX = 0;
  int squareY = 0;
  int squareSize = 100;
  float dmdRed = 200;
  float dmdGreen = 100;
  float dmdBlue = 0;
  
  Square (int r, int g, int b){
  float dmdRed= r;  
  float dmdGreen= g;
  float dmdBlue= b;
  }

 
void squareShape (int x1, int y1){

//square  
  fill(200,80,200, random(30));
  stroke(0);
  beginShape();
    vertex(x1 +0,y1 +0);
    vertex(x1 +80,y1 +0);
    vertex(x1 +0,y1 +80);
    
  endShape();
  
  beginShape();
    vertex(x1 +80, y1 +0);
    vertex(x1 +160,y1 +0);
    vertex(x1 +160,y1 +80);
    vertex(x1 +80, y1 +0);
  endShape();
  
  fill(150,80,200, 30);
  beginShape();
    vertex(x1 +160,y1 +80);
    vertex(x1 +160,y1 +160);
    vertex(x1 +80,y1 +160);
    vertex(x1 +160,y1 +80);    
  endShape();
  
  beginShape();
    vertex(x1 +0,y1 +80);
    vertex(x1 +0,y1 +160);
    vertex(x1 +80,y1 +160);
    vertex(x1 +0,y1 +80);    
  endShape();
   //Diamond/triangles
  fill(100,155,0);
  noStroke();
  beginShape();
    vertex(x1 +0,y1 +80);
    vertex(x1 +160,y1 +80);
    vertex(x1 +80,y1 +0);
    vertex(x1 +0,y1 +80);    
  endShape();
  
  fill(10,155,0, (50));
  beginShape();
    vertex(x1 +80,y1 +160);
    vertex(x1 +160,y1 +80);
    vertex(x1 +0,y1 +80);
    vertex(x1 +80,y1 +160);    
  endShape();    
  }
}
//Circles

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
   stroke(0);
    fill(100,20,255,(40));
    ellipse(x, y, circleSize+100, circleSize+100);
    fill(100,20,255,(40));
    ellipse(x, y, circleSize+40, circleSize+40);
    fill(200,random(200),0,(40));
    ellipse(x, y, circleSize+80, circleSize+80);
     
  }
  

   
   
}


