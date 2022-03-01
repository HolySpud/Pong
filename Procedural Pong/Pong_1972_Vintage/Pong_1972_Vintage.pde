
void setup() {
 //size(displayHeight, displayHeight);
 fullScreen();
 population();
}//End Setup

void draw() {
  if (menu) {
  gameDraw();
  } else {
    
  }
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
