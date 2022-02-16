void rightPaddleDraw() {
rightPaddleStart();
}

void rightPaddleStart() {
rect(xRightPaddle, yRightPaddle, widthPaddle, heightPaddle);
if (smoothRightUp == true && yRightPaddle > 0) yRightPaddle -= velPaddleRight;
if (smoothRightDown == true && (yRightPaddle + heightPaddle) < height) yRightPaddle += velPaddleRight;
}

void rightPaddleKeyPressed() {
if (key == CODED) {
    if (keyCode == UP) {
    smoothRightUp = true;
    }
    if (keyCode == DOWN) {
    smoothRightDown = true;
    }
  }
}

void rightPaddleKeyReleased() {
  if (key == CODED) {
  if (keyCode == UP) {
   smoothRightUp = false;
  }
  if (keyCode == DOWN) {
  smoothRightDown = false;
  }
  }
}
