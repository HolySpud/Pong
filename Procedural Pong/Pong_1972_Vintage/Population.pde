void population() {
 xBall = displayWidth*1/2;
 yBall = displayHeight*1/2;
 ballDiameter = width*1/50;
 
 x2LeftNet = x1LeftNet = width*1/25;
 y1Net = height*0;
 y2Net = height;
 
 x2RightNet = x1RightNet = width - width*1/25;
 
 heightPaddle = 100;
 widthPaddle = 30;
 xLeftPaddle = x2LeftNet;
 yLeftPaddle = height/2 - heightPaddle/2;
 xRightPaddle = x2RightNet - widthPaddle;
 yRightPaddle = height/2 - heightPaddle/2;
}//End Population
