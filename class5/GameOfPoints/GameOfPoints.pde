/* Fix me, using functions!
   Goucher - Digital Media Programming
   Ben Taylor
*/

int points = 0;
int timer = 0;
color reallyBadRed = color(255,0,0,100);
int boxwid;

void setup() {
   size(500,500);
   boxwid = width;
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
  
  timer = timer + 1;
}



/************ 
*   MOUSE   *
************/

void mousePressed() {
  if (timer < 300) {
    points = points + 7;
  }
  
}

void mouseMoved() {
  if (timer < 300) {
    points = points + 1;
  }
}

void mouseReleased() {
  if (timer < 300) {
    points = points + 9;
  }
}

// Nice mouse extras!

void mouseDragged() {
  if (timer < 300) {
    points = points + 8;
  }
}

void mouseWheel() {
  if (timer < 300) {
    points = points + 2;
  }
}

void keyPressed() {
  if (timer < 300) {
    points = points + 4;
  } 
}



