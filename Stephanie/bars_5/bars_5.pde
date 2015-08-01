int size = 900;
int argnum = 2;
Bar [] phase1 = new Bar [1]; 

void setup () {
 size (size,size); 
 for(int i = 0; i < phase1.length; i = i + 1) {
   phase1[i] = new Bar(height*i/phase1.length,(height/2)/phase1.length+1); 
 }
}

void draw () {
 background(255);
 noStroke();
 fill(7,106,232); 
 //round(i);
 for(int i = 0; i < phase1.length; i++) {
  phase1[i].moveLeft();
  phase1[i].moveRight();
 }
} 


class Bar {
  
float x = 0;
float y = 0;
float q = 0;
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
   if (q > size) {
   phase1 = new Bar [argnum]; 
   for(int i = 0; i < phase1.length; i = i + 1) {
   phase1[i] = new Bar(height*i/phase1.length,(height/2)/phase1.length+1);
   argnum = argnum + 1; 
   }
  }
  }
}
