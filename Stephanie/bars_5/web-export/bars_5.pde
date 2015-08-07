float speed = 3;
int argnum = 2;
Bar [] phase = new Bar [1]; 

void setup () {
 size (500,500); 
 for(int i = 0; i < phase.length; i = i + 1) {
   phase[i] = new Bar(height*i/phase.length,(height/2)/phase.length+1); 
 }
}

void draw () {
 background(255);
 noStroke();
 fill(7,106,232); 
 //round(i);
 for(int i = 0; i < phase.length; i++) {
  phase[i].moveLeft();
  phase[i].moveRight();
 }
} 


class Bar {
  
float x = 0;
float y = 0;
float q = 0;
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
   phase = new Bar [argnum]; 
   for(int i = 0; i < phase.length; i = i + 1) {
   phase[i] = new Bar(height*i/phase.length,(height/2)/phase.length+1);
   argnum = argnum + 1; 
   }
  }
  }
}

