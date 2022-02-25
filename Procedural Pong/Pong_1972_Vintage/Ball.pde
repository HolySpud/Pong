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
  //Paddle Bouncing (Right, Left)
  if (yBall > yRightPaddle && yBall < yRightPaddle + heightPaddle && xBall + ballDiameter/2 >= xRightPaddle ) {
    velBallX *= -1;
  }
  if (yBall > yLeftPaddle && yBall < yLeftPaddle + heightPaddle && xBall - ballDiameter/2 <= xLeftPaddle + widthPaddle) {
    velBallX *= -1;
  }
  //Moving the ball
  xBall += velBallX;
  yBall += velBallY;
  //Goal (Right, Left)
  if (xBall + ballDiameter/2 >= x1RightNet) {
  velBallX = 0;
  velBallY = 0;
  delay(500);
  ballReset(true);
  }
  if (xBall - ballDiameter/2 <= x1LeftNet) {
  velBallX = 0;
  velBallY = 0;
  delay(500);
  ballReset(false);
  }
  //Win Check
  if (scoreRight >= scoreMax || scoreLeft >= scoreMax) {
  textAlign(CENTER, CENTER);
  text("YOU WIN", width/2, height/30);
  velBallX *= 0;
  velBallY *= 0;
  }
}

void ballStart() {
ellipse(xBall, yBall, ballDiameter, ballDiameter);
}

void ballReset(Boolean sideCheck) {
if (sideCheck) scoreRight++; else scoreLeft++;
xBall = displayWidth*1/2;
yBall = displayHeight*1/2;
velBallX = int(random(-height/70, height/70));
 while(velBallX == 0) {
 velBallX = int(random(-height/70, height/70));
 };
 velBallY = int(random(-height/100, height/100));
 while(velBallY == 0) {
 velBallY = int(random(-height/100, height/100));
 };
}
