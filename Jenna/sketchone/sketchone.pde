
//x,y,w,h
void setup () {
  size (400,400);
  noCursor();
}
void draw(){
  
strokeWeight(0);

fill(0,0,0,25);
rect(0,0,width,height);
fill(255,0,0);

rect(mouseX,50,50,50);
fill(255,132,0);

rect(mouseX,100,50,50);
fill(255,234,0);

rect(mouseX,150,50,50);
fill(0,255,0);

rect(mouseX,200,50,50);
fill(0,166,255);

rect(mouseX,250,50,50);
fill(25,0,255);

rect(mouseX,300,50,50);
fill(102,0,255);


}
