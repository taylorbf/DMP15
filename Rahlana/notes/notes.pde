int state =0;
int y =10;
float rand = 0;
int DownToDown = 10;
int DownToUp = 60;
int NToDown = 20;
int NToUp = 20;
int UpToDown = 10;
int UpToUp = 70;

/* state 0 mean: down
   state 1 mean: neutral
   state 2 mean: up
   */

void setup(){
size (400,400);
y= height/2;
}

void draw(){

  for (int i =0; i < width; i++){
  if (state == 0){
  rect(i,y,30,30);
  rand = random(100);
  if(rand < DownToDown){state = 0; y--;}  
  if (rand > 100- DownToUp){state = 2;y++;}
  if (rand > DownToUp && rand < DownToUp){state = 1;}
  
  } else if (state == 1){
      point(i,y);
      rand = random(100);
      if(rand < NToDown){state = 0;y--;}  
      if (rand > 100- NToUp){state = 2;y++;}
      if (rand > NToDown && rand < NToUp){state = 1;}
  } else {
      point(i,y);
      rand = random(100);
      if(rand < UpToDown){state = 0;y--;}  
      if (rand > 100- UpToUp){state = 2;y++;}
      if (rand > UpToDown && rand < UpToUp){state = 1;}
    }

  }
}

void mousePressed(){
  y = height/2;
  
}
