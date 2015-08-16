PImage starry;

//define how many rows and columns to divide the image into
//try changing their values!
int rows = 100;
int columns = 100;

void setup() {
  size(500,500);
  noStroke();
  starry = loadImage("Starry Night.jpg");
  // get the image's pixels. 
  //the result will be in rainbow.pixels
  starry.loadPixels();
}

void draw() {
  // determine the pixel size of the rows and columns
  int rowsize = int(starry.height / rows);
  int colsize = int(starry.width / columns);
  
  // i created these to easily scale my image to full screen
  // you might want to do something different
  float scaleX = width / rows;
  float scaleY = height / columns;
  
  // the magic!
  // loop through rainbow.pixels and draw rectangles instead of drawing the whole picture
  for (int i=0; i<columns; i++) {
    for (int j=0; j<rows; j++) {
        // pxnum is the spot in the rainbow.pixels array for the "current pixel"
        int pxnum = i * colsize + j * rowsize * starry.width;
        // use the "current pixel" to set our fill color
        fill(starry.pixels[pxnum],50);
        // draw the rectangle
        if (mouseX <= 10) {
        ellipse(i*scaleX,j*scaleY,scaleX,scaleY);
        } else if (mouseX > 10 && mouseX <=100) {
        ellipse(i*scaleX,j*scaleY,random(scaleX,20),random(scaleY,20));
        } else if (mouseX > 100 & mouseX <= 200) {
         ellipse(i*mouseX,j*mouseY,random(scaleX,45),random(scaleY,45));
        } else if (mouseX > 200 & mouseX <= 300) {
         ellipse(i*mouseX,j*mouseY,random(scaleX,60),random(scaleY,60));
        } else if (mouseX > 300 & mouseX <= 400) {
         ellipse(i*scaleX,j*scaleY,random(scaleX,75),random(scaleY,75));
        } else if (mouseX > 400 & mouseX <= 500) {
         ellipse(i*mouseX,j*mouseY,random(scaleX,90),random(scaleY,90));
        }
    }
  }
}
