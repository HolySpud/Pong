void rightPaddleDraw() {
rightPaddleStart();
}

void rightPaddleStart() {
rect(xRightPaddle, yRightPaddle, widthPaddle, heightPaddle);
if (smoothRightUp = true) yRightPaddle -= velPaddleRight;
if (smoothRightDown = true) yRightPaddle += velPaddleRight;
}

void rightPaddleKeyPressed() {
if (key == CODED) {
    if (keyCode == UP) {
    if (yLeftPaddle < 0)
    {} else {
     yLeftPaddle -= velPaddleLeft;
    }
    } else if (keyCode == DOWN) {
    if ((yLeftPaddle + heightPaddle) > height)
    {} else {
     yLeftPaddle += velPaddleLeft;
    }
    }
  }
}
