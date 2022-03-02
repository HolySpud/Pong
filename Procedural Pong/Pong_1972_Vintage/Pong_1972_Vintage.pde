
void setup() {
 //size(displayHeight, displayHeight);
 size(1000, 600);
 population();
}//End Setup

void draw() {
  gameDraw();
}//End draw

void keyPressed() {
  //Right Paddle
  rightPaddleKeyPressed();
  leftPaddleKeyPressed();
  instantWin();
}// End keyPressed

void keyReleased() {
  rightPaddleKeyReleased();
  leftPaddleKeyReleased();
}

void mousePressed() {}//End mousePressed
