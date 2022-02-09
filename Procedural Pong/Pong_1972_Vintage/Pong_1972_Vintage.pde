//Global Variables
float xBall, yBall, ballDiameter;
float x2LeftNet, x1LeftNet, x1RightNet, x2RightNet, y1Net, y2Net;
float xLeftPaddle, yLeftPaddle, xRightPaddle, yRightPaddle, widthPaddle, heightPaddle;
void setup() {
 //size(displayHeight, displayHeight);
 fullScreen();
 population();
 
}//End Setup

void draw() {
  //Ball
  ellipse(xBall, yBall, ballDiameter, ballDiameter);
  //Paddles (right, left)
  rect(xLeftPaddle, yLeftPaddle, widthPaddle, heightPaddle);
  rect(xRightPaddle, yRightPaddle, widthPaddle, heightPaddle);
  //Middle Net
  line(width/2, 0, width/2, height);
  //Left Net
  line(x1LeftNet, y1Net, x2LeftNet, y2Net);
  //Right Net
  line(x1RightNet, y1Net, x2RightNet, y2Net);
  //Scores (right, left)
  //rect();
  //rect();
}//End draw

void keyPressed() {}// End keyPressed

void mousePressed() {}//End mousePressed
