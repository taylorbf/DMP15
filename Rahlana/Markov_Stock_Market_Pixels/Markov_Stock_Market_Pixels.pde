int state = 0;
int y =0;
float rand = 0;
int DownToDown = 10;
int DownToUp = 60;
int NToDown = 20;
int NToUp = 20;
int UpToDown = 10;
int UpToUp = 70;

void setup(){
size (400,400);

}

void draw(){
  loadPixels();
  for (int i = 0; i < pixels.length; i++){
  {
  if (state == 0){
  point(i,y);
  rand = random(100);
  if(rand < DownToDown){state = 0;pixels[i] = color (255, 0, 0);}  
  if (rand > 100- DownToUp){state = 2;pixels[i] = color (0, 255, 0);}
  if (rand > DownToUp && rand < DownToUp){state = 1;pixels[i] = color (0, 0, 255);}
  
  } else if (state == 1){
      point(i,y);
      rand = random(100);
      if(rand < NToDown){state = 0;pixels[i] = color (255, 0, 0) ;}  
      if (rand > 100- NToUp){state = 2;pixels[i] = color (0, 255, 0);}
      if (rand > NToDown && rand < NToUp){state = 1;pixels[i] = color (255, 255, 0);}
  } else {
      point(i,y);
      rand = random(100);
      if(rand < UpToDown){state = 0;pixels[i] = color (255, 0, 0);}  
      if (rand > 100- UpToUp){state = 2;pixels[i] = color (0, 255, 0);}
      if (rand > UpToDown && rand < UpToUp){state = 1;pixels[i] = color (255, 255, 0);}
    }

  }
  }
updatePixels();  
}

//pixels[i] = color (random(255), random(255), random(255));
