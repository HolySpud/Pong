
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
  //Paddles (right, left)
  leftPaddleDraw();
  rightPaddleDraw();
  //Middle Net
  stroke(255);
  line(width/2, 0, width/2, height);
  //Left Net
  line(x1LeftNet, y1Net, x2LeftNet, y2Net);
  //Right Net
  line(x1RightNet, y1Net, x2RightNet, y2Net);
  //Scores (right, left)
  rect(xRightScore, yRightScore, widthScore, heightScore);
  rect(xLeftScore, yLeftScore, widthScore, heightScore);
  //Movement
  
}//End draw

void keyPressed() {
  //Right Paddle
  rightPaddleKeyPressed();
}// End keyPressed

void mousePressed() {}//End mousePressed
