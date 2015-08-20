import processing.video.*;

Movie lightning; 

void setup() { 
  size(500,500);
  lightning = new Movie(this, "ex.mov");

  lightning.loop(); 
}

void draw() { 
  image(lightning, 0, 0); 
} 

void movieEvent(Movie m) { 
  m.read(); 
} 