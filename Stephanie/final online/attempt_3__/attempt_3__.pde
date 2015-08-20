import processing.video.*;

Movie lightning;

void setup() {
 size(500,500);
 //background(0,0);
 //colorMode(HSB);
 lightning = new Movie(this,"ex.mov");
 lightning.loop();
}
 
void draw() {
 if(lightning.available()) {
   lightning.read();
   lightning.loadPixels();
 
 color currentcolor = lightning.pixels;
 
   /*for(int i = 0; i < lightning.pixels.length; i++) {
     //may need to change this
     color currentcolor = lightning.pixels[i];
     //int howbright = round(brightness(currentcolor));
     
     /*if(howbright > 20 && howbright <= 63){
       lightning.pixels[i] = color(random(255),255,255,50); //color(random(255),74,86); 
     } */
      if (currentcolor >= 0 && currentcolor <= 127){
       color(199,56,222);
     }
     else if (currentcolor >= 128 && currentcolor <= 255){
      color(56,222,201);
     }
     /*else if (howbright >=192 && howbright <= 255){
       lightning.pixels[i] = color(random(255),74,86); 
     }*/
 }
 lightning.updatePixels();
 image(lightning,0,0);
}