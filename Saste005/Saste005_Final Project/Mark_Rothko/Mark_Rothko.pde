PImage img;

void setup() {
  size(500,500);
  img = loadImage("Rothko.jpg");
}

void draw(){
  tint(mouseY+100, mouseX+100, mouseY+100, 100);
  image(img, 0,0, width,height);
}
