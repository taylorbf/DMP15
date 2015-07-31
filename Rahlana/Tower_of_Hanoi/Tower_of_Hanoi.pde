int pole1 = 100;
int pole2 = 200;
int pole3 = 300;

brick b1 = new brick(1,1);
brick b2 = new brick(1,2);
brick b3 = new brick(1,3);
brick b4 = new brick(1,4);
brick b5 = new brick(1,5);
brick[] Bricks = {b1,b2,b3,b4,b5};

void setup(){
  size(1280,720);
  frameRate(2);
  
}

void draw(){
  background(255);
  fill(#008000);
  rect(pole1, height/2, 100,10);
  rect(pole2, height/2, 100,10);
  rect(pole3, height/2, 100,10);
  //loop update
   /*for(int i = 0; i < 10; i++){
  Bricks{i}.update();
  }
  */
  b1.update();
  b2.update();
  b3.update();
  b4.update();
  b5.update();
  
  moveTower(5,1,3,2);
  
}

void moveTower(int heightT,int fromPole, int toPole, int withPole){
  if(heightT >=1){
  moveTower(heightT-1, fromPole, withPole, toPole);
  Bricks[5- heightT].moveDisk(toPole);
  
  moveTower(heightT-1,withPole,toPole,fromPole);
  }
  
}

class brick{
  int poleLocation, brickSize;
  brick (int x, int y){
  poleLocation = x;
  brickSize = y;
  
  }
    void update () {
  rect(poleLocation*100, height/2-brickSize*30, 100/brickSize, 30);
  
  }
  void moveDisk(int toPole){
    poleLocation = toPole;
  
  }

}
