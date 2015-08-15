/* Movement Detection
   Goucher - Digital Media Programming FA14
   Ben Taylor
   Derived from Mirror by Daniel Shiffman.
*/ 
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
  frameRate(30);
    for (int i=0;i < wholeShape.length;i++){
   wholeShape[i] = new Square(200,100,10);
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
        rect(x, y, cellSize, cellSize);
    
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

