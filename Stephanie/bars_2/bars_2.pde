float x = 0;
float y = 0;
float q = 0;
float z = 500/2;
float n = 2;
float speed = 5;
int bW = 500;
int bH = 500;

Bar blue;
Bar black;

void setup () {
 blue = new Bar();
 black = new Bar();
 size (500,500); 
 
}

void draw () {
 background(255);
 noStroke();
 phase1();
 
 if(q > 500) {
   phase2();
 }
}

void phase2 () {
 fill(0);
 black.moveLeft();
 black.moveRight();
}

void phase1 () {
 fill(7,106,232);
 blue.moveLeft();
 blue.moveRight();
}

class Bar {

Bar() {

}
  
void moveLeft (){
  rect(x,y,bW,bH/n);
  x = x - speed;
}

void moveRight (){
  rect(q,z,bW,bH/n);
  q = q + speed;
  }
 }



