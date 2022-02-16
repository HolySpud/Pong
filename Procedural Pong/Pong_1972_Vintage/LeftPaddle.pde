void leftPaddleDraw() {
  leftPaddleStart();
}

void leftPaddleStart(){
  rect(xLeftPaddle, yLeftPaddle, widthPaddle, heightPaddle);
  if (smoothLeftUp == true && yLeftPaddle > 0) yLeftPaddle -= velPaddleLeft;
  if (smoothLeftDown == true && (yLeftPaddle + heightPaddle) < height) yLeftPaddle += velPaddleLeft;
}

void leftPaddleKeyPressed() {
    if (key == 'w' || key == 'W') {
    if (yLeftPaddle < 0)
    {} else {
     smoothLeftUp = true;
    }
    } 
    if (key == 's' || key == 'S') {
    if ((yLeftPaddle + heightPaddle) > height)
    {} else {
     smoothLeftDown = true;
    }
    }
}

void leftPaddleKeyReleased() {
  if (key == 'w' || key == 'W') {
  smoothLeftUp = false;
  }
  if (key == 's' || key == 'S') {
  smoothLeftDown = false;
  }
}
