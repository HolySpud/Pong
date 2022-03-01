
void setup() {
 //size(displayHeight, displayHeight);
 fullScreen();
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
