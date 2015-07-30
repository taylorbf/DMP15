float point1X = 0;
float point1Y = 0;
float point2X = 0;
float point2Y = 0;


void setup () {
  size(500,500);
}

void draw() {
  background(255);
  smooth();
  /*if (point1X<=255) {
    stroke(point1X+5);
  } else {
    stroke(point1X-5);
  }*/
  strokeCap(ROUND);
  strokeWeight(point1X/50);
  //pushMatrix();
  //rotate(PI/point1X+random(-10,10));
  line(point1X,point1Y,point2X,point2Y);
  linePosition(.5);
  lineLength(point1X+10);
  //popMatrix();

  
  }
void linePosition(float move) {
  if (point2X >= width) {
    point1X = 0;
  }
  point1X = point1X + move;
  point1Y = point1Y + move;
  point2Y = point1X + move;
}

/*void lineStroke(float fatten) {
  //point1X = point1X/fatten;
}
}

lineAlpha() {
}
*/

void lineLength(float grow) {
  if (point1X <= 50) {
  point2X = point1X + grow;
  } 
  }

/*speedX = 0
speedY = 0

void sarahFunction() {
  point1x = point1X + speedX
  point1Y = point1Y + speedY
  point2Y = point1Y
  
  if (point1X > width) {
    speedX = speedX * -2}
    {
*/

//loop?
  //for (int i = 0; i < 240; i = i + 10) {
    //line(i + 20, i + 20, 500 - (20 +i), 20 + i);
