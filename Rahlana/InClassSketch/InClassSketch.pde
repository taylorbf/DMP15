PShape s;
int shapeSize =100;
Triangle t1 = new Triangle(10);

void setup(){
size(600,600, P2D);

}

void draw (){
   fill(100,0,100);
  t1.newColor(#000000);
  for (int j = 0; j < height/shapeSize; j++){
   for (int i = 0; i < width/shapeSize; i++){
    t1.update(shapeSize, shapeSize*i, shapeSize*j);
    t1.newColor(color(i*20,i*20,i*20));
    }
 }

  translate(shapeSize/2+5*shapeSize,4*shapeSize);
  //rotate(PI);
  
  for (int j = 0; j < height/shapeSize; j++){
   for (int i = 0; i < width/shapeSize; i++){
     t1.update(shapeSize, shapeSize*i, shapeSize*j);
   }
 }
}
 
class Triangle {
  float size = 10;
  color tColor = #000000;
Triangle(float ssize) {
  size =ssize;

}

void update(float size, float locX, float locY){
   beginShape();
    fill(tColor);
    vertex(locX- size/2, locY - sqrt(5/4*size*size));
    vertex(0,10);
    vertex(locX+size/2, locY - sqrt(5/4*size*size));
    vertex(locX, sqrt(3/4*size*size)/2+locY);
  endShape(CLOSE);
  }
  void newColor(color nColor ){
  tColor = nColor;
  
  }
}


