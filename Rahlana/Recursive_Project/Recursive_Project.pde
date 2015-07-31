
void setup(){
size(400,400);

}

void draw(){
drawRect(0, 0, 6);


}
void drawRect(int x, int y, float square) {
  float cc = 10 * square/2.0;
  fill(cc,100,random(200), random(cc));
  rect(x, y, square*80, square*80);
  if(square > 1) {
    square = square * 0.80f;
    drawRect(x, y, square);
    drawRect(8-x, 8-y, square);
  }
}




