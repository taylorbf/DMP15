// This is about strokes and variables

float x = 0;

void setup() {
  
  size (700,100);
  
  //This turns off strokes
  //noStroke();
  
}

void draw() {
  
  //This defines stroke color
  stroke(0, 100, 200);
  
  //Stroke width
  strokeWeight(2);
  
  ellipse(x,50,50,50);
  
  x = x+4;
}

/* TRY
- Use x in as many places as possible!
- If x is too big, try x/2 or x/3 or x/50
*/
