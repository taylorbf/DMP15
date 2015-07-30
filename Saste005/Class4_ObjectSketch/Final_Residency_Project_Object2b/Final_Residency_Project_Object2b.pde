float point1X = 0;
float point1Y = 0;
float point2X = 0;
float point2Y = 0;
float speedX = 0;
float speedY = 0;

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
  line(point1X,point1Y,point2X,point2Y);
  lineMovement(4,.02);

  
  }



void lineMovement(float speedX,float speedY) {
  point1X = point1X + speedX;
  point1Y = point1Y + speedY;
  point2X = point2X + speedX;
  point2Y = point2Y + speedY;
  
  /*if (point1X > width || point1X < 0 || point1X > height) {
  speedX = speedX * -2;
  */ 
}


