/* Black and White Video Capture
   Goucher - Digital Media Programming FA14
   Ben Taylor
   Edited by Daylan Jones
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
  soundfileIntro.loop();
  
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
   
void keyPressed(){
   if (key =='r'){
   bw = color(howbright,0,0);
   soundfileRed.play();
}
 }
         
   /*        
     if (key=='g'){
        bw = color(0,howbright,0);
         
         soundfileGreen.play();
           }
           
     if (key=='b'){
        bw = color(0,0,howbright);
         bw = color(0,howbright,0);
       
       soundfileBlue.play();
           }
 */      
  
    video.updatePixels();

    image(video,0,0);
  }

}