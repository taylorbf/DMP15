/* Fix me, using functions!
   Goucher - Digital Media Programming
   Ben Taylor
*/

int points = 0;
int timer = 0;

void setup() {
   size(500,500);
   textAlign(CENTER);
   textSize(50);
   background(255,0,0);
}

void draw() {
  
  if (timer < 300) {
     background(255,255,255);
  } else {
     background(0,255,0);
  }
 
  fill(0);
  text(points,width/2,height/2);
  
  timer++;
}



/************ 
*   MOUSE   *
************/

void mousePressed() {
  pointsUp();
  }


void mouseMoved() {
pointsUp();
  }


void mouseReleased() {
  pointsUp();  
  } 


// Nice mouse extras!

void mouseDragged() {
pointsUp();
  }


void mouseWheel() {
  pointsUp(2);
  }


/*********** 
*   KEYS   *
***********/

void keyPressed() {
 pointsUp(4);
  }


void pointsUp(){

if (timer<300){
  points=points+increase;

}}

