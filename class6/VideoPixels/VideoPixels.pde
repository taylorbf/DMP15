import codeanticode.syphon.*;
import processing.video.*;
PGraphics canvas;
SyphonServer server;
int cellSize = 20;
int cols, rows;
Capture video;


void setup() {
  size(640, 480, P3D);
  canvas = createGraphics(640, 480, P3D);
  frameRate(30);
  
  cols = width / cellSize;
  rows = height / cellSize;
  server = new SyphonServer(this, "Processing Syphon");

  // Start capturing default video input
  video = new Capture(this, width, height);
  video.start();
}


void draw() { 
  
    
  
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
      
        // Make a new color for this pixel of the video
        float r = red(video.pixels[loc]);
        float g = green(video.pixels[loc]);
        float b = blue(video.pixels[loc]);
        color c = color(r, g, b);
      
        // Draw a rectangle with this color
        canvas.beginDraw();
        canvas.noStroke();
        canvas.fill(c);
        canvas.rect(x, y, cellSize, cellSize);
        canvas.endDraw();
      image(canvas, 0, 0);
      server.sendImage(canvas);
      }
    }
  }
}
