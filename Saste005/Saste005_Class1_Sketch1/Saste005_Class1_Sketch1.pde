int x = 20;
void setup() {
  frameRate(500);
  size(1500,600);
  background(255);
}

void draw() {
  noStroke();
  smooth();
  fill(0);
  ellipse(x,25,25,25);
  fill(0,150);
  beginShape();
  vertex(x+random(30),65+random(5));
  vertex(x-random(30),50+random(10));
  vertex(x+random(30),80+random(10));
  vertex(x-random(30),95+random(10));
  endShape(); 
  fill(0,0,0,15);
  ellipse(x,150,75,75);
  fill(0,0,0);
  ellipse(x,216,2,2);
  ellipse(x,212,2,2);
  ellipse(x,208,2,2);
  ellipse(x,220,2,2);
  ellipse(x,224,2,2);
  fill(0,0,0);
  rect(x,250,5,5);
  fill(random(255),25);
  ellipse(x,296,random(50),random(50));
  ellipse(x,292,random(50),random(50));
  ellipse(x,288,random(50),random(50));
  ellipse(x,300,random(50),random(50));
  ellipse(x,304,random(50),random(50));
  fill(random(255));
  ellipse(x,360,random(250),25);
  fill(random(10), random(255));
  ellipse(x+random(20),416+random(20),random(10),random(10));
  ellipse(x-random(20),412-random(20),random(40),random(10));
  ellipse(x+random(40),408+random(20),random(10),random(10));
  ellipse(x-random(20),420-random(20),random(10),random(50));
  ellipse(x,224,2,2);
  //stroke(0,25);
  //strokeWeight(10);
  //curve(x,450,x+2,452,x+6,454,x+8,452,x+12,450,x+16,448,x+18,448,x+20,452); ?????
  fill(0,25);
  ellipse(x,475,10,10);
  ellipse(x+2,477,10,10);
  ellipse(x+6,479,10,10);
  ellipse(x+8,477,10,10);
  ellipse(x+12,475,10,10);
  ellipse(x+16,473,10,10);
  ellipse(x+18,473,10,10);
  ellipse(x+20,477,10,10);
  fill(200,25);
  ellipse(x,525,20,20);
  ellipse(x+4,527,20,20);
  ellipse(x+12,530,20,20);
  ellipse(x+16,532,20,20);
  ellipse(x+12,536,20,20);
  ellipse(x+8,540,20,20);
  ellipse(x+4,543,20,20);
  ellipse(x,545,20,20);
  ellipse(x-2,550,20,20);
  ellipse(x-6,552,20,20);
  ellipse(x-8,556,20,20);
  ellipse(x-10,558,20,20);
  x  = x + 4;
}
