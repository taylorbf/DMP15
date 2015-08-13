void setup() {
  size(500,500);
  noStroke();
  fill(255);
  rect(0,0,width,height);
}
  
  

void draw() {    
  for (int k = 0; k < width; k = k + 50) {
    for (int l = 0; l < height; l = l + 50) {
      if ((mouseX >= k+5 && mouseX < k + 50) && (mouseY >= l + 5 && mouseY < l + 50) && mousePressed && keyPressed) {
        if (key == 'r') {
          stroke(255,0,0);
          fill(255,0,0);
          rect(k,l,50,50);
        } else if (key == 'y') {
          stroke(255,255,0);
          fill(255,255,0);
          rect(k,l,50,50);
        } else if (key == 'b') { 
          stroke(0,0,255);
          fill(0,0,255);
          rect(k,l,50,50);
        } else if (key == 'k') {
          stroke(0);
          fill(0);
          rect(k,l,50,50);
        } else if (key == 'w') {
          stroke(255);
          fill(255);
          rect(k,l,50,50);
        }  
      }
      if ((mouseX >= k && mouseX < k + 45) && (mouseY >= l && mouseY < l + 45) && mousePressed && keyPressed) {
        if (key == 'h') {
          stroke(0);
          strokeWeight(6);
          line(k,l,k+50,l);
        } else if (key == 'v') {
          stroke(0);
          strokeWeight(6);
          line(k,l,k,l+50);
        }
      }
    }
  }
}
      
