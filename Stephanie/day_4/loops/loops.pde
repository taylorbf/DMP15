void setup(){
 size(500,500); 
 background(115,19,19);
 stroke(0);
 fill(255,255,230);
 
}

void draw(){
 for (int i=0; i<500; i=i+20) {
  rect(i,i,i,i);
 } 
 for (int i=0; i<100; i=i+20) {
   rect(i,i,i,i);
 }
}
