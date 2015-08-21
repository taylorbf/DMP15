float timer= 0;


void setup() {
  size(400,400);
  background (0);
 noStroke();
}

void draw() {
  
  if (timer>15){
   for (int i=0; i<140; i=i+1) {
     fill(i*50,0,0);
     rect(-i,i*50,100,50);
     
   }}
   
   if (timer>45){
   for (int i=0; i<140; i=i+1) {
     fill(0,0,i*50);
     rect(i*10,i*50,100,50);
     
   }}
   
   if(timer>75){
     for (int i=0; i<10; i=i+1) {
     fill(i*40,i*40,0);
     rect(i*22,i*50,100,50);
     
   
     }}
     
     if(timer>105){
    for (int i=0; i<200; i=i+1) {
     fill(i*30,0,0);
     rect(i*35,i*50,100,50);
     
    }}
    
     if(timer>155){
     for (int i=0; i<140; i=i+1) {
     fill(0,0,i*30);
     rect(i*45,i*50,100,50);
     
  
    }}
    
    if(timer>195){
    for (int i=0; i<140; i=i+1) {
     fill(i*20,i*20,0);
     rect(i*60,i*50,100,50);
     
  
    }}
    
     if(timer>225){
     for (int i=0; i<140; i=i+1) {
     fill(i*15,0,0);
     rect(i*68,i*50,100,50);
     
     }}
     
     if(timer>250){
     for (int i=0; i<140; i=i+1) {
     fill(0,0,i*20);
     rect(i*75,i*50,100,50);
     
     
  
    }}
    
    timer=timer+1;
}
