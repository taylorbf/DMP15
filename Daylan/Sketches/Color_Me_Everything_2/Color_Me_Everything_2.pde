/* Black and White Video Capture
   Goucher - Digital Media Programming FA14
   Ben Taylor
   Edited by Daylan Jones
*/
import processing.sound.*;

import processing.video.*;

SoundFile soundfile;

Capture video;

void setup() {
  size(640, 480);
  /* Define and start video capture */
  video = new Capture(this, width, height);
  video.start();
}

void draw() {  
  if (video.available()) {
    video.read();
    video.loadPixels();
    soundfile = new SoundFile(this, "Intro.mp3");
    soundfile.play();
    
 
    for (int i = 0; i < video.pixels.length; i++) {
       
       color bw = video.pixels[i];
     
       float howbright = brightness(bw);
       
       howbright = round(howbright/200)*255;
       bw = color(howbright);
       
    if (key=='r'){
        bw = color(howbright,0,0);
         soundfile = new SoundFile(this, "RED.mp3");
         soundfile.play();
           }
           
     if (key=='g'){
        bw = color(0,howbright,0);
         soundfile = new SoundFile(this, "GREEN.mp3");
         soundfile.play();
           }
           
     if (key=='b'){
        bw = color(0,0,howbright);
         bw = color(0,howbright,0);
        soundfile = new SoundFile(this, "BLUE.mp3");
       soundfile.play();
           }
       
       video.pixels[i] = bw;
    }
    video.updatePixels();

    image(video,0,0);
  }
}