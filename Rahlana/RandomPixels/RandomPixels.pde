void setup(){
size (400,400);

}

void draw(){
  loadPixels();
  for (int i = 0; i < pixels.length; i++){
  pixels[i] = color (random(255), random(255), random(255));
  }
updatePixels();  
}


