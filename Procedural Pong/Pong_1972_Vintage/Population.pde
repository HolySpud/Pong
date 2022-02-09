void population() {
 //Ball Diameters
 xBall = displayWidth*1/2;
 yBall = displayHeight*1/2;
 ballDiameter = width*1/50;
 
 //Net Diameters
 x2LeftNet = x1LeftNet = width/25;
 x2RightNet = x1RightNet = width - width/25;
 y1Net = height*0;
 y2Net = height;
 
 //Paddle Diameters
 heightPaddle = height/4;
 widthPaddle = 30;
 xLeftPaddle = x2LeftNet;
 yLeftPaddle = height/2 - heightPaddle/2;
 xRightPaddle = x2RightNet - widthPaddle;
 yRightPaddle = height/2 - heightPaddle/2;
 
 //Score Box Diameters
 widthScore = width/15;
 heightScore = height/15;
 xLeftScore = width/4 - widthScore/2 + x1LeftNet/2;
 yLeftScore = height/20;
 xRightScore = width - width/4 - widthScore/2 - x1LeftNet/2;
 yRightScore = yLeftScore;
 
 
 
 //Velocity
 velPaddle = 10;
}//End Population
