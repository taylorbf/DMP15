PImage img;

void setup() {
  size(500,500);
  img = loadImage("Rothko.jpg");
}

void draw(){
  tint(mouseY+50, mouseX+50, mouseY+50, 255);
  image(img, 0,0, width,height);
}
