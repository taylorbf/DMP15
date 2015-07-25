
//x,y,w,h

int x = 1;

void setup () {
  size (400,450);
  noCursor();
}
void draw(){
  
strokeWeight(0);

fill(0,0,0,25);
rect(0,0,width,height);

fill(255,0,0);
rect(x/2,50,50,50);

fill(255,132,0);
rect(x,100,50,50);

fill(255,234,0);
rect(x/2,150,50,50);

fill(0,255,0);
rect(x,200,50,50);

fill(0,166,255);
rect(x/2,250,50,50);

fill(25,0,255);
rect(x,300,50,50);

fill(102,0,255);
rect(x/2,350,50,50);
 x = x + 1;


}
