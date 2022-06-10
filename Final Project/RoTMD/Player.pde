final class Player extends Entity {
  char upCap, upLow, downCap, downLow, leftCap, leftLow, rightCap, rightLow; //Key Bind Variables
  //Player Sprites
  PImage left1, slash1; //, left2, front1, front2, front3, back1, back2, back3;
  //Constructor
  Player(float x, float y) {
    super(x, y); //Super

    left1 = loadImage("Warrior_1.png");
    slash1 = loadImage("slash.png");

    range = 50;

    speed = 10; //Dynamic Speed
    strSpeed = speed; // Static Normal Speed
    diagSpeed = sqrt((speed*speed)/2); // Static Diagonal Speed

    //Width, Height (Player, Hitbox, Projectile)
    w = height/10;
    h = w;

    wBox = w * 1.1;
    hBox = h * 1.1;
    projW = 25;
    projH = projW;

    //Up Bind
    upCap = 'W';
    upLow = 'w';

    //Down Bind
    downCap = 'S';
    downLow = 's';

    //Left Bind
    leftCap = 'A';
    leftLow = 'a';

    //Right Bind
    rightCap = 'D';
    rightLow = 'd';
  }

  void draw() { //Draw
    //attack();
    move();
    collisionCheck();
    stroke(0);
    //image(left1, x, y, w, h);
    rect(x, y, w, h);
  }

  void move() { // Movement
    if (moveCheckUp && y > 0) { // Up Movement
      y -= (speed);
    }
    if (moveCheckDown && y < height - h) { // Down Movement
      y += (speed);
    }
    if (moveCheckLeft && x > 0) { // Left Movement
      x -= (speed);
    }
    if (moveCheckRight && x <= width - w) { // Right Movement
      x += (speed);
    }
    if (moveCheckUp && moveCheckLeft || moveCheckUp && moveCheckRight) {
      speed = diagSpeed;
    } else if (moveCheckDown == false) {
      speed = strSpeed;
    }
    if (moveCheckDown && moveCheckLeft || moveCheckDown && moveCheckRight) {
      speed = diagSpeed;
    } else if (moveCheckUp == false) {
      speed = strSpeed;
    }
  }

  void moveStart() { // KeyPressed
    if (key == upCap || key == upLow) {
      moveCheckUp = true;
    }
    if (key == downCap || key == downLow) {
      moveCheckDown = true;
    }
    if (key == leftCap || key == leftLow) {
      moveCheckLeft = true;
    }
    if (key == rightCap || key == rightLow) {
      moveCheckRight = true;
    }
  }

  void moveStop() { // KeyReleased
    if (key == upCap || key == upLow) {
      moveCheckUp = false;
    }
    if (key == downCap || key == downLow) {
      moveCheckDown = false;
    }
    if (key == leftCap || key == leftLow) {
      moveCheckLeft = false;
    }
    if (key == rightCap || key == rightLow) {
      moveCheckRight = false;
    }
  }

  void collisionCheck() {
    for (int i = 1; i < shapes.size(); i++) {
      Shape obj = shapes.get(i);
      if (y < obj.y + obj.h ) {
        if (x > obj.x && x < obj.w) { // Not working???
            y+=speed;
        }
        if (w > obj.x && w < obj.w) { // Not working???
            y+=speed;
        }
      }
    }
  }

  void attack() {
    if (mousePressed && (mouseButton == LEFT)) {
      attackAnim();
    }
  }
  
  void attackAnim() {
  int m = millis();
  if (m < 1000) {
    rect (100, 100, 100, 100);
  }
}
}
