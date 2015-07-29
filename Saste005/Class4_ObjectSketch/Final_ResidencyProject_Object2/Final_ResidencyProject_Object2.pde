void setup () {
  size(500,500);
}

void draw() {
  background(255);
  smooth();
  strokeCap(ROUND);
  strokeWeight(4);
  for (int i = 0; i < 240; i = i + 10) {
    line(i + 20, i + 20, 500 - (20 +i), 20 + i);
  }
  
}

