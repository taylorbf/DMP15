float x = 1;
float b = 0;

void setup() {
  size(600,600);
  fill(225,225,225,25);
  
}

void keyPressed() {
  b = random(255);
}

void draw() { 
  //1st region
  if (x < 120) {
    fill(x/5,100,200,150);
    ellipse(x,random(600),70,70);
  }
    
    x = x + 1;
  //2nd region 
  if (x > 120 && x < 240) {
    fill(x/5,100,200,120);
    noStroke();
    ellipse(x,random(600),50,50);
    
    x = x + 1;
  }
  //3rd region
  if (x > 240 && x < 360) {
    fill(x/5,100,200,90);
    stroke(0);
    ellipse(x,random(600),30,30);
    
    x = x + 1;
  }
  //4th region
  if (x > 360 && x < 480) {
    fill(x/5,100,200,60);
    noStroke();
    ellipse(x,random(600),50,50);
    
    x = x + 1;
  }
  //5th region
  if (x > 480 && x < 600) {
    fill(x/5,100,200,30);
    stroke(0);
    ellipse(x,random(600),70,70);
    
    x = x + 1;
  }
  
  if (x > 600 && x < 2000) {
    fill(100,b,100,30);
    ellipse(random(600),random(600),40,20);
  }
  
  if (x > 2000 && mousePressed) {
    fill(100,100,b,30);
    noStroke();
    ellipse(random(600),random(600),40,40);
  }
  
  if (x == 2400) {
    fill(0,100,200,150);
    ellipse(100,100,100,50);
  }
  
  if (x == 2700) {
    fill(120,100,200,150);
    ellipse(300,300,100,100);
  }
  
  if (x == 3000) {
    fill(60,100,200,150);
    ellipse(500,500,100,50);
  }
  
  println(x);
  
}


