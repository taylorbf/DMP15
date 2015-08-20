import processing.video.*;

Movie lightning;

void setup() {
 size(500,500);
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
     float howbright = brightness(currentcolor);
     
     if(howbright > 0 && howbright <= 63){
      lightning.pixels[i] = color (0,0,255); 
     } 
      else if (howbright >= 64 && howbright <= 127){
       lightning.pixels[i] = color (255,0,0);
     }
     else if (howbright >= 128 && howbright <= 191){
       lightning.pixels[i] = color (0,255,0);
     }
     else if (howbright >=192 && howbright <= 255){
       lightning.pixels[i] = color (255,255,0); 
     }
 }
 lightning.updatePixels();
 image(lightning,0,0);
}
}