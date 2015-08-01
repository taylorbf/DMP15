/* CRAZY EYES!
   ORANGE IS THE NEW BLACK THEME
   PRECIOUS KOLLOCK DMP 2015
*/
Eye[] stare = new Eye[100]; // array length, amount of eyes
int[] column = { 45, 90, 135, 180, 225, 270, 315, 360, 405, 450 };
int bg = 0;


void setup() {
  size(500,500); 

  for(int i = 0; i < stare.length; i++) { // array execution
    stare[i] = new Eye();
  }
  
  //Eye.eyeClose();
  for(int i = 0; i < stare.length; i++) {
    stare[i].eyeX = random(500);
    for(int p = 0; p < 10; p++) {
      stare[p].eyeY = column[p];
    }
    for(int p = 10; p < 20; p++) {
      stare[p].eyeY = column[p-10];      
    }
    for(int p = 20; p < 30; p++) {
      stare[p].eyeY = column[p-20];
    }
    for(int p = 30; p < 40; p++) {
      stare[p].eyeY = column[p-30];
    }
     
  }
  
}


void draw() {
  if (mousePressed) {
    fill(247,124,47,30);
    rect(0,0,width,height);
    //stare[].roomLight();
    bg = 2;
  }
  else {
    fill(0,30);
    rect(0,0,width,height);
    //stare[].roomDark();
    bg = 0;
  }
    
  for(int i = 0; i < 10; i++) {
    stare[i].eyeBlink();
  }
  
  for(int i = 10; i >= 10 && i < 20; i++) {
    stare[i].eyeOpen();
  }
  
  for(int i = 20; i >= 20 && i < 30; i++) {
    stare[i].roomDark();
  }
  
  for(int i = 30; i >= 30 && i < 40; i++) {
    stare[i].eyeClose();
  }
  

}

class Eye {
  
  float midpointX = 250;
  float midpointY = 250;
  float eyeX = 0;
  float eyeY = 0;
  float eyeA = 30;
  float pupilSize = 25; // has to be < 35
  float pupilDilation = 8; // larger # darker the room
  float eyeWidth = 50;
  float eyeHeight = 35;
  float blink = 0; // blink timer
  float eyeOpen = 1;
  float eyeClose = 0;
  float bg = 1; // 0, black | 1,grey | 2, orange background
  float x = random(500)/250;
  int eyeR = 191;
  int eyeG = 143;
  int eyeB = 114;
  

  Eye() {
   /* eyeR = r;
    eyeG = g;
    eyeB = b;
    eyeX = x;
    eyeY = y;
  */
  }
  
  void eyeOpen() {
    bg = int(x);
    
    if (bg == 0) {
      fill(0,eyeA);
    }
    
    if (bg == 1) {
      fill(127,eyeA);
    }
    
    if (bg == 2) {
      fill(247,124,47,eyeA);
    }
    // outer eye
    fill(255);
    ellipse(eyeX,eyeY,eyeWidth,eyeHeight);
    // pupil
    fill(eyeR,random(255),eyeB);
    ellipse(eyeX,eyeY,pupilSize,pupilSize);
    // inner pupil
    fill(0);
    ellipse(eyeX,eyeY,pupilDilation,pupilDilation);
    eyeOpen = 1;
    
  }
    
  void eyeClose() {
    bg = int(x);
    
    if (bg == 0) {
      fill(0,eyeA);
    }
    
    if (bg == 1) {
      fill(127,eyeA);
    }
    
    if (bg == 2) {
      fill(247,124,47,eyeA);
    }
    // outer eye
    fill(255);
    ellipse(eyeX,eyeY,eyeWidth,eyeHeight);
    // lid
    line(eyeX-eyeWidth/2,eyeY,eyeX+eyeWidth/2,eyeY);
    eyeClose = 0;
    
  }
  
  void eyeBlink() {
    bg = int(x);
    
    if (bg == 0) {
      fill(0,eyeA);
    }
    
    if (bg == 1) {
      fill(127,eyeA);
    }
    
    if (bg == 2) {
      fill(247,124,47,eyeA);
    }
    
    if (eyeOpen == 1) {
      eyeClose();
    }
    
    if (blink < 10) {
      eyeClose();
    }
    
    if (blink >= 10 && blink < 30) {
      eyeOpen();
    }
    
    if (blink >= 30 && blink < 59) {
      eyeClose();
      blink = 0;
    }
  
    blink++;
    
  }
  
  void roomDark() {
    bg = int(x);
  
    if (bg == 0) {
      fill(0,eyeA);
    }
    
    if (bg == 1) {
      fill(127,eyeA);
    }
    
    if (bg == 2) {
      fill(247,124,47,eyeA);
    }
  
    fill(255);
    ellipse(eyeX,eyeY,eyeWidth,eyeHeight);
    // pupil
    fill(eyeR,eyeG,eyeB);
    ellipse(eyeX,eyeY,pupilSize,pupilSize);
    // inner pupil
    fill(0);
    ellipse(eyeX,eyeY,pupilDilation,pupilDilation);
    
    if (pupilDilation >= 2 && pupilDilation <= 20 && bg == 0) {
      pupilDilation = pupilDilation + .2;
      
    }
    
    pupilDilation = 8;
  }
  
  void roomLight() {
    bg = int(x);
    
    if (bg == 0) {
      fill(0,eyeA);
    }
    
    if (bg == 1) {
      fill(127,eyeA);
    }
    
    if (bg == 2) {
      fill(247,124,47,eyeA);
    }
    
    fill(255);
    ellipse(eyeX,eyeY,eyeWidth,eyeHeight);
    // pupil
    fill(eyeR,eyeG,eyeB);
    ellipse(eyeX,eyeY,pupilSize,pupilSize);
    // inner pupil
    fill(0);
    ellipse(eyeX,eyeY,pupilDilation,pupilDilation);
    
    if (pupilDilation <= 20 && pupilDilation >= 2 && bg == 2) {
      pupilDilation = pupilDilation - .05;
      
    }
    
    pupilDilation = 8;

  }
  
}



