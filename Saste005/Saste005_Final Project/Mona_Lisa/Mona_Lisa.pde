PImage img1;
PImage img2;
PImage img3;

void setup() {
  size(500,500);
  img1 = loadImage("Mona Lisa.jpg");
  img2 = loadImage("Mona Lisa Eyes.png");
  img3 = loadImage("Mona Lisa Stache.png");
}

void draw(){
  image(img1, 0,0, width,height);
  if (mouseX>=width/2 && mouseX<=width/2+6) {
    image(img2, mouseX-width/2,0, width, height);
  } else if (mouseX<=width/2 && mouseX>=width/2-6) {
    image(img2, mouseX-width/2,0, width, height);
  } else if (mouseX>=width/2+6) {
    image(img2, 0 +6,0, width, height);
  } else if (mouseX<=width/2-6) {
    image(img2, 0 - 6,0, width, height);
  }
  if ((mouseX >= 200 && mouseX <= 250) && (mouseY >= 250 && mouseY <= 300) && mousePressed) {
    image(img3,0,0, width, height);
  }
}
