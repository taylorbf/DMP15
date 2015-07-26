void setup() {
  size (980, 500);
  background(255);
}
//int x=10

void draw() {
 for(int i=1; i<10; i=i+1) {

  noStroke();
  fill(255,0);//RED-1
  ellipse(i*100,50,90,90);//Head
  fill(0);
  ellipse(i*98,35,25,25);//Left Eye
  ellipse(i*102,35,25,25);//Right Eye
  ellipse(i*100,65,45,20);//Mouth
  
  noStroke();
  fill(255,0,0,3);//RED-1
  ellipse(i*100,50,90,90);//Head
  fill(0);
  ellipse(i*98,35,25,25);//Left Eye
  ellipse(i*102,35,25,25);//Right Eye
  ellipse(i*100,65,45,20);//Mouth
  
  noStroke();
  fill(0,255,0,3);//Row-2
  ellipse(i*100,150,90,90);//Head
  fill(0);
  ellipse(i*98,135,25,25);//Left Eye
  ellipse(i*102,135,25,25);//Right Eye
  ellipse(i*100,165,45,20);//Mouth
  
   noStroke();
  fill(0,0,255,3);//Row-2
  ellipse(i*100,250,90,90);//Head
  fill(0);
  ellipse(i*98,235,25,25);//Left Eye
  ellipse(i*102,235,25,25);//Right Eye
  ellipse(i*100,265,45,20);//Mouth
 
  fill(mouseX,mouseY);//Row-3
  ellipse(i*100,350,90,90);//Head
  fill(0);
  ellipse(i*98,335,25,25);//Left Eye
  ellipse(i*102,335,25,25);//Right Eye
  ellipse(i*100,365,45,20);//Mouth
  
  fill(0);//Row-3
  ellipse(i*100,450,90,90);//Head
  fill(255);
  ellipse(i*98,435,25,25);//Left Eye
  ellipse(i*102,435,25,25);//Right Eye
  ellipse(i*100,465,45,20);//Mouth
  
}
 stroke(1);
 smooth();
 strokeWeight(3);
  
  
  fill(255,255,255,255);//Big Head
  ellipse(500,250,450,450);//Head
  
  if (mousePressed){
   fill(mouseY,mouseX,mouseY,255);//Big Head
   ellipse(500,250,450,450);
  }
  fill(0);
  ellipse(400,150,130,130);
  ellipse(600,150,130,130);
  ellipse(500,350,200,50);


 
}

