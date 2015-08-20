float timer = 0;

void setup() {
}

void draw() {
  
  colorMode(HSB);
  fill(timer,255,255);
  ellipse(50,50,50,50);
  colorMode(RGB);
  
  timer = timer + 0.1;
  if (timer > 255) {
     timer = 0; 
  }
}