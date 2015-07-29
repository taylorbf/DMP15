void setup () {
  size(1000,1000);
}

void draw() {
  background(255);
  smooth();
  strokeCap(ROUND);
  strokeWeight(4);
  for (int i = 0; i < 500; i = i + 10) {
    line(i + 20, i + 20, 500 - (20 +i), 20 + i);
    line(i + 520, i +20, 1000 - (20+i), 20 + i);
  }
  
}

