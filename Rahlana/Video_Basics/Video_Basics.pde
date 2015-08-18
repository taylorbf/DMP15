
import processing.video.*;

Capture video;

void setup() {
  size(640, 480);
  /* Define and start video capture */
  video = new Capture(this, width, height);
  video.start();
}

void draw() {  
  if (video.available()) {
  //if (video.available() && mousePressed) makes images appear where click
    /* Read video frame and draw it to canvas as image */
    video.read();
    // the image, x,y
    //if mouseX, mouseY image will move around screen
    image(video, 0, 0);
  }
}
