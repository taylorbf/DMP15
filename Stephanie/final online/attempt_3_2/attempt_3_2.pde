import processing.video.*;

Movie lightning;

void setup() {
 size(500,500);
 background(0,0);
 colorMode(HSB);
 lightning = new Movie(this,"ex.mov");
 lightning.loop();
}
 
void draw() {
 if(lightning.available()) {
   lightning.read();
   lightning.loadPixels();
   
   for(int i = 0; i < lightning.pixels.length; i++) {
     //may need to change this
     //color currentcolor = lightning.pixels[i];
     int howbright = round(brightness(lightning.pixels[i]));
     
     if(howbright > 20 && howbright <= 63){
       lightning.pixels[i] = color(random(255),255,255,50); //color(random(255),74,86); 
     } 
      else if (howbright >= 64 && howbright <= 127){
       lightning.pixels[i] = color(random(255),255,255,50);
     }
     else if (howbright >= 128 && howbright <= 191){
       lightning.pixels[i] = color(random(255),255,255,50);
     }
    
 }
 lightning.updatePixels();
 image(lightning,0,0);
}
}