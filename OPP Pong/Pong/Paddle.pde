class Paddle {
  float x, y, w, h;
  color c;
  int yVel;
  char up, down;
  Boolean moveCheckUp = false, moveCheckDown = false;


  Paddle(float xParameter, float yParameter, color cParameter, char upParameter, char downParameter) {
    w = width/50;
    h = height/4;
    x = xParameter;
    y = yParameter - h/2;
    c = cParameter;
    up = upParameter;
    down = downParameter;
    yVel = 10;
  }

  void drawPaddle() {
    fill(c);
    rect(x, y, w, h);
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
    if (moveCheckUp && y > 0) {
      y -= yVel;
    }
    if (moveCheckDown && y + h < height) {
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
