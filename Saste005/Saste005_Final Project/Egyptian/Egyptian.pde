PImage egyptian;

void setup() {
  size(500,500);
}

void draw(){
  egyptian = loadImage("Egyptian.jpg");
  image(egyptian, mouseX-200,0, 1370,height);
}
