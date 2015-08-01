Bar [] phase1 = new Bar [1]; //replaces Bar blue;
Bar [] phase2 = new Bar [4]; //Bar black


void setup () {
 size (500,500); 
 for(int i = 0; i < phase1.length; i = i + 1) {
   phase1[i] = new Bar(i*height/.5,250/phase1.length); 
 }
}

void draw () {
 background(255);
 noStroke();
 fill(7,106,232);
 for(int i = 0; i < phase1.length; i++) {
  phase1[i].moveLeft();
  phase1[i].moveRight();
 }
} 


class Bar {
  
float x = 0;
float y = 0;
float q = 0;
float z = 500/2;
float n = 2;
float speed = 5;
float bW = width;
float bH;

Bar(float sety, float setH) {
 y = sety; 
 bH = setH;

}
  
void moveLeft (){
  rect(x,y,bW,bH);
  x = x - speed;
}

void moveRight (){
  rect(q,y+bH,bW,bH);
  q = q + speed;
  }
}
