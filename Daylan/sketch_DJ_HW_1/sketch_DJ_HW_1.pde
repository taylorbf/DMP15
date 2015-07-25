void setup() {
size(920,400);
stroke(1);
background(345,45);
}

void draw() {
    //fill(mouseY,233,45);
    //ellipse(500,mouseX,59,50);
    
    fill(255,random(255),65);
    ellipse(mouseX,mouseY,80,random(255));
    
    fill(150,random(255),85);
    //Comeback to this later
    //triangle(mouseX,50,mouseY,67,60,70);
    
}
