/* Black and White Video Capture
   Goucher - Digital Media Programming FA14
   Ben Taylor
   Edited by Daylan Jones
   
  Sample: The Dells - "Love is Blue (I Can Sing A Rainbow)"
*/
import processing.sound.*;
import processing.video.*;

SoundFile soundfileIntro;
SoundFile soundfileRed;
SoundFile soundfileGreen;
SoundFile soundfileBlue;


Capture video;

void setup() {
  size(640, 480);
  soundfileIntro = new SoundFile(this, "Intro.mp3");
  soundfileRed = new SoundFile(this, "RED.mp3");
  soundfileGreen = new SoundFile(this, "GREEN.mp3");
  soundfileBlue = new SoundFile(this, "BLUE.mp3");
  soundfileIntro.play();
  //soundfileIntro.loop();
  
  video = new Capture(this, width, height);
  video.start();
}

void draw() {  
  if (video.available()) {
    video.read();
    video.loadPixels();
        
 
    for (int i = 0; i < video.pixels.length; i++) {
       
       color bw = video.pixels[i];
     
       float howbright = brightness(bw);
       
       howbright = round(howbright/200)*255;
       bw = color(howbright);
      
       
       if (key == 'r'){
          bw = color(howbright,0,0);
       }
       if (key == 'g'){
          bw = color(0,howbright,0);
       }
         if (key == 'b'){
          bw = color(0,0,howbright);
       }
       
       video.pixels[i] = bw;
    }
   
    video.updatePixels();

    image(video,0,0);
  }
}


void keyPressed() {
  
  println(keyCode);
  

  // The keyCode for r is 82
  // The keyCode for g is 71
  // The keyCode for b is 66
  if (keyCode == 82){
    soundfileRed.play();
  }
    
   if (keyCode == 71) {
      soundfileGreen.play();
  }
  if (keyCode == 66) {
      soundfileBlue.play();
  }
}
  
void keyReleased() { //<>//
  if (keyCode == 82){
    soundfileIntro.stop(); //<>//
    soundfileGreen.stop();
    soundfileBlue.stop();
   }
   if (keyCode == 71){
    soundfileIntro.stop();
    soundfileRed.stop();
    soundfileBlue.stop();
   }
    if (keyCode == 66){
    soundfileIntro.stop();
    soundfileRed.stop();
    soundfileGreen.stop();
   }
  }