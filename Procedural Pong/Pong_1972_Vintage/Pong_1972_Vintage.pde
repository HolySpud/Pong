//Global Variables
float xBall, yBall, ballDiameter, velBallX, velBallY;
float x2LeftNet, x1LeftNet, x1RightNet, x2RightNet, y1Net, y2Net;
float xLeftPaddle, yLeftPaddle, xRightPaddle, yRightPaddle, widthPaddle, heightPaddle, velPaddle;
float xLeftScore, yLeftScore, xRightScore, yRightScore, widthScore, heightScore;

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
  leftPaddle();
  rect(xRightPaddle, yRightPaddle, widthPaddle, heightPaddle);
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
  
}//End draw

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
    if (yLeftPaddle < 0)
    {} else {
     yLeftPaddle -= velPaddle;
    }
    } else if (keyCode == DOWN) {
    if ((yLeftPaddle + heightPaddle) > height)
    {} else {
     yLeftPaddle += velPaddle;
    }
    }
  }
}// End keyPressed

void mousePressed() {}//End mousePressed
