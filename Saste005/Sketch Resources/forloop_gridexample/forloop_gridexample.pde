void setup() {
  size (500,500);
  
}

void draw() {
  background (255);
  for (int i = 25; i < width; i = i + 50) {
    for (int j = 25; j < height; j = j + 50) {
      smooth();
      fill(0,random(0,50));
      noStroke();
      ellipseMode(CENTER);
      ellipse(i,j,50,50);
    }
   }
}
        
  
