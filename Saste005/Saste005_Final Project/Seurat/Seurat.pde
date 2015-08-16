PImage seurat;

//define how many rows and columns to divide the image into
//try changing their values!
int rows = 100;
int columns = 100;

void setup() {
  size(500,500);
  noStroke();
  seurat = loadImage("Sunday Afternoon.jpg");
  // get the image's pixels. 
  //the result will be in rainbow.pixels
  seurat.loadPixels();
}

void draw() {
  // determine the pixel size of the rows and columns
  int rowsize = int(seurat.height / rows);
  int colsize = int(seurat.width / columns);
  
  // i created these to easily scale my image to full screen
  // you might want to do something different
  float scaleX = width / rows;
  float scaleY = height / columns;
  
  // the magic!
  // loop through rainbow.pixels and draw rectangles instead of drawing the whole picture
  for (int i=0; i<columns; i++) {
    for (int j=0; j<rows; j++) {
        // pxnum is the spot in the rainbow.pixels array for the "current pixel"
        int pxnum = i * colsize + j * rowsize * seurat.width;
        // use the "current pixel" to set our fill color
        fill(seurat.pixels[pxnum],50);
        // draw the rectangle
        if (mouseX <= 100) {
        ellipse(i*scaleX,j*scaleY,random(scaleX,10),random(scaleY,10));
        } else if (mouseX > 100 & mouseX <= 200) {
         ellipse(i*scaleX,j*scaleY,random(scaleX,25),random(scaleY,25));
        } else if (mouseX > 200 & mouseX <= 300) {
         ellipse(i*scaleX,j*scaleY,random(scaleX,40),random(scaleY,40));
        } else if (mouseX > 300 & mouseX <= 400) {
         ellipse(i*scaleX,j*scaleY,random(scaleX,55),random(scaleY,55));
        } else if (mouseX > 400 & mouseX <= 500) {
         ellipse(i*scaleX,j*scaleY,random(scaleX,70),random(scaleY,70));
        }
    }
  }
}
