
void setup() {
 //size(displayHeight, displayHeight);
 size(1000, 600);
 population();
}//End Setup

void draw() {
  if (start) {
  gameDraw();
  } else {
  mainMenu();
  }
}//End draw

void keyPressed() {
  //Right Paddle
  rightPaddleKeyPressed();
  leftPaddleKeyPressed();
  instantWin();
  //Main Menu Binds
  paddleSpeed(); // 'J'
  keyStart(); // ' '
}// End keyPressed

void keyReleased() {
  rightPaddleKeyReleased();
  leftPaddleKeyReleased();
}

void mousePressed() {}//End mousePressed
