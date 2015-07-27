float a= 40;
float b= 30;
float i = 1.01;
float x=600, y=400, bsize=20, speed=5;
void setup(){

size (600,400);

}

void draw() {

    fill(random(255),random(40),random(255),10);
    frameRate(20);
    rect (0,0,random(a),b);
    rect (a,b,a*2,b*2,(30));
    rect (a*2+a,b*2+b,random(a*3),b*3);
    rect (a*3+a*2+a,b*3+b*2+b,a*4,b*4,(40));
    rect (a*4+a*3+a*2+a,b*4+b*3+b*2+b,random(a*5),b*5);
 
      a = a + i;
      b = b + i;
  
  if (b < 400 || b < 1) {
    
    i = i * -1;
   
   
  if (key=='z'){
    background(0);
    fill(255,40,255,80);
    ellipse(random(width),random(height),random(50),50);
    stroke(0,255,30,240);
    
   }
   
   
    if (key=='a'){
     background(0);
     fill(255,40,255,80);
     ellipse(random(width),random(height),random(50),50);
     stroke(0,255,30,240);
    
   }
 
   if (key=='d'){
    fill(255,40,255,40);
    frameRate(20);
    
   }
    
    fill(255,40,255,30);
    ellipse(random(width),random(height),random(50),50);
    
    fill(40,100,255,30);
    rect(random(width),random(height),random(50),50);
    
   if (key=='x'){
    background(255);
    fill(255,40,255,80);
    ellipse(random(width),random(height),random(50),50);
   }
   
    if (key=='s'){
    fill(30,200,255,30);
    noStroke();
    ellipse(mouseX,mouseY,random(30),random(200));
    
    }

 
 } 

  
  } 
