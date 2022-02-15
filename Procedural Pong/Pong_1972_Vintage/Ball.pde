void ball() {
 ballStart();
 ballMove();
}

void ballMove() {
  // Vertical Bouncing
  if(yBall + ballDiameter/2 >= height || yBall - ballDiameter/2 <= 0) {
  velBallY *= -1;
  } 
  //Horizontal Bouncing
  if(xBall + ballDiameter/2>= width || xBall - ballDiameter/2 <= 0) {
  velBallX *= -1;
  }
  //Goal (Right, Left)
  if (xBall + ballDiameter/2 >= x1RightNet) {
  velBallX = 0;
  velBallY = 0;
  }
  if (xBall - ballDiameter/2 <= x1LeftNet) {
  velBallX = 0;
  velBallY = 0;
  }
  //Moving the ball
  xBall += velBallX;
  yBall += velBallY;
}

void ballStart() {
ellipse(xBall, yBall, ballDiameter, ballDiameter);
}
