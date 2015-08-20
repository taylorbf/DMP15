import processing.video.*;

Movie lightning;

void setup() {
 size(500,500);
 frameRate(10);
 //background(0,0);
 colorMode(HSB);
 lightning = new Movie(this,"ex.mov");
 lightning.loop();
}
 
void draw() {
 if(lightning.available()) {
   lightning.read();
   lightning.loadPixels();
   
   color randomColor = color(random(255),255,255,50);
   for(int i = 0; i < lightning.pixels.length; i++) {
     color currentcolor = lightning.pixels[i];
     float howbright = brightness(currentcolor);
     
     if(howbright > 20 && howbright <= 63){
       lightning.pixels[i] = randomColor; //color(random(255),74,86); 
     } 
      else if (howbright >= 64 && howbright <= 127){
       lightning.pixels[i] = randomColor;
     }
     else if (howbright >= 128 && howbright <= 191){
       lightning.pixels[i] = randomColor;
     }
    
 }
 lightning.updatePixels();
 image(lightning,0,0);
}
}