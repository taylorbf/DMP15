
//Define an empty array of Strings (text)
String[] chop;

void setup() {
  
  size(600,600);
  
  // Define a string of text
  String novel = "all day and night, music / a quiet bright reedsong / if it fades, we fade.";
  
  // Turn the string into an Array, splitting at each space
  chop = novel.split(" ");
  
}

void draw() {
  
  fill(0,10);
  rect(0,0,width,height);
  
  fill(255);
  textSize(40);
  
  // Get random integer between 0 and array length
  int index = int(random(chop.length));
  
  // Use the integer to find a random word
  String randWord = chop[index];
  
  // Draw the word
  text(randWord,random(width),random(height));
  
}
