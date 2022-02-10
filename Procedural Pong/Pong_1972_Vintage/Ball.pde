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
  //Paddle Bouncing
  if(xBall - ballDiameter/2 < xLeftPaddle + widthPaddle) {
   velBallX *= -1;
  }
 xBall += velBallX;
 yBall += velBallY;
}

void ballStart() {
ellipse(xBall, yBall, ballDiameter, ballDiameter);
}
