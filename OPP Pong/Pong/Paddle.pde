class Paddle extends Shape {
  color c;
  int yVel;
  char up, down;
  Boolean moveCheckUp = false, moveCheckDown = false;


  Paddle(float x, float y, float w, float h, color cParameter, char upParameter, char downParameter) {
    super(x, y, w, h);
    y = y - h/2;
    c = cParameter;
    up = upParameter;
    down = downParameter;
    yVel = 10;
  }

  void drawPaddle(GameMenu menuMain) {
    fill(c);
    rect(x, y, w, h);
    move(menuMain);
  }
  void moveStart() {
    if (key == up) {
      moveCheckUp = true;
    }
    if (key == down) {
      moveCheckDown = true;
    }
  }
//
  void move(GameMenu menuMain) {
    if (moveCheckUp && y > 0) {
      y -= (yVel* menuMain.paddleSpeed);
    }
    if (moveCheckDown && y + h < height) {
      y += (yVel* menuMain.paddleSpeed);
    }
  }
//
  void moveStop() {
    if (key == up) {
      moveCheckUp = false;
    }
    if (key == down) {
      moveCheckDown = false;
    }
  }
  //Setter
  //Send paddle location to ball class for collision and bounce
}
