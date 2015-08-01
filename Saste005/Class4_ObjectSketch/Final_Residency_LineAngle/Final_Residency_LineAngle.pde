void setup() {
  size(500,500);
  background(255);
}

void draw() {
  stroke(0,255);
  strokeWeight(2);
 
  for (int i = 0; i < 125; i = i + 10) {
  line(width/4-i, i, width/4+i, i); 
  }
  
   //for (int i = 0; i < 130; i = i + 10) {
    //line(i,i, width/2 - i, i);
  
  /*for (int i = 0; i < 240; i = i + 10) {
    line(i + 20, i + 20, 500 - (20 +i), 20 + i);
  }*/ 
}
