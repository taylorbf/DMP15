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
  if (timer < 300) {
    points = points + 5; 
  }
}

void mouseMoved() {
  if (timer < 300) {
    points = points + 1;
  }
}

void mouseReleased() {
  if (timer < 300) {
    points = points + 5;  
  } 
}

// Nice mouse extras!

void mouseDragged() {
  if (timer < 300) {
    points = points + 1;
  }
}

void mouseWheel() {
  if (timer < 300) {
    points = points + 1;
  }
}

/*********** 
*   KEYS   *
***********/

void keyPressed() {
  if (timer < 300) {
    points = points + 3;
  }
}
