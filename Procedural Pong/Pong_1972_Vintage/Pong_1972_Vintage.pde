
void setup() {
 //size(displayHeight, displayHeight);
 fullScreen();
 population();
}//End Setup

void draw() {
  //Background
  fill(0);
  rect(0, 0, width, height);
  //Ball
  fill(255); 
  ball();
  //Paddles (Right, Left)
  leftPaddleDraw();
  rightPaddleDraw();
  //Nets (Middle, Right, Left)
  stroke(255);
  line(width/2, 0, width/2, height);
  line(x1RightNet, y1Net, x2RightNet, y2Net);
  line(x1LeftNet, y1Net, x2LeftNet, y2Net);
  //Scores (Right, Left)
  rect(xRightScore, yRightScore, widthScore, heightScore);
  rect(xLeftScore, yLeftScore, widthScore, heightScore);
  //Movement
  
}//End draw

void keyPressed() {
  //Right Paddle
  rightPaddleKeyPressed();
  leftPaddleKeyPressed();
}// End keyPressed

void keyReleased() {
  rightPaddleKeyReleased();
  leftPaddleKeyReleased();
}

void mousePressed() {}//End mousePressed
