import processing.video.*;

Movie lightning;

void setup() {
 size(500,500);
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
     color currentcolor = lightning.pixels[i];
     int howbright = round(brightness(currentcolor));
     
     if(howbright > 0 && howbright <= 63){
       lightning.pixels[i] = hue(i); 
     } 
      else if (howbright >= 64 && howbright <= 127){
       lightning.pixels[i] = hue(i + 63);
     }
     else if (howbright >= 128 && howbright <= 191){
       lightning.pixels[i] = hue(i + 127);
     }
     else if (howbright >=192 && howbright <= 255){
       lightning.pixels[i] = hue(i + 192); 
     }
 }
 lightning.updatePixels();
 image(lightning,0,0);
}
}