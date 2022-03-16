class Paddle {
  float x, y, w, h;
  color c;
  int yVel;
  char up, down;
  Boolean moveCheckUp = false, moveCheckDown = false;


  Paddle(float xParameter, float yParameter, float wParameter, float hParameter, color cParameter, char upParameter, char downParameter) {
    x = xParameter;
    y = yParameter;
    w = wParameter;
    h = hParameter;
    c = cParameter;
    up = upParameter;
    down = downParameter;
    yVel = 5;
  }

  void drawPaddle() {
    fill(c);
    rect(x, y - h/2, w, h);
    move();
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
  void move() {
    if (moveCheckUp && y - h/2 > 0) {
      y -= yVel;
    }
    if (moveCheckDown && y + h/2 < height) {
      y += yVel;
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
