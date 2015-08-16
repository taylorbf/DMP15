PImage egyptian;

void setup() {
  size(850,500);
  
}

void draw(){
  egyptian = loadImage("Egyptian.jpg");
  image(egyptian, mouseX-700,0, 1370,height);
  noStroke();
  fill(255);
  rect(0,0,175,500);
  rect(675,0,250,500);
}
