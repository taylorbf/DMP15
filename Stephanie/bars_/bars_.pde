Bar blue1;
Bar blue2;

void setup () {
 blue1 = new Bar();
 blue2 = new Bar();
 size (500,500); 
}

void draw () {
 background(255);
 noStroke();
 fill(7,106,232);
 blue1.moveLeft();
 blue2.moveRight();
}

class Bar {
  
float x = 0;
float y = 0;
float speed = 2;
//not working: float bWidth = width;
//not working: float bHeight = height;

Bar() {

}

void moveLeft (){
  x = x - speed;
  rect(x,y,width,height/2);
}

void moveRight (){
  x = x + speed;
  rect(x,height/2,width,height/2);
 
}
}

