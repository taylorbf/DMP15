void setup() {
  size (500,500);
  background (255);
}

void draw() {
  for (int i = 5; i < width; i = i + 10) {
    for (int j = 5; j < height; j = j + 10) {
      smooth();
      fill(0);
      noStroke();
      ellipseMode(CENTER);
      ellipse(i,j,10,10);
    }
   }
}
        
  
