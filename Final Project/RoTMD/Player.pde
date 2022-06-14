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

    speed = 7; //Dynamic Speed
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
      // BOTTOM COLLISION
      if (y < obj.y + obj.h && y > obj.y + obj.h - obj.h/10 && w < obj.w) { // Small -> Big
        if ((x > obj.x) && (x < obj.x+obj.w)) {
          y+=speed;
        } else
          if ((x+w > obj.x) && (x+w < obj.x+obj.w)) {
            y+=speed;
          } else
            if ((x > obj.x) && (x < obj.x+obj.w) && (x+w > obj.x) && (x+w < obj.x+obj.w)) {
              y+=speed;
            }
      }
      if (y < obj.y + obj.h && y > obj.y + obj.h - obj.h/10 && w > obj.w) { // Big -> Small
        if ((obj.x > x) && (obj.x < x+w)) {
          y+=speed;
        } else
          if ((obj.x+obj.w > x) && (obj.x+obj.w < x+w)) {
            y+=speed;
          } else
            if ((obj.x > x) && (obj.x < x+w) && (obj.x+obj.w > x) && (obj.x+obj.w < x+w)) {
              y+=speed;
            }
      }
      // LEFT COLLISION
      if (x < obj.x + obj.w && x > obj.x + obj.w - obj.w/10 && h < obj.h) { // Small -> Big
        if ((y > obj.y) && (y < obj.y+obj.h)) {
          x+=speed;
        } else
          if ((y+h > obj.y) && (y+h < obj.y+obj.h)) {
            x+=speed;
          } else
            if ((y > obj.y) && (y < obj.y+obj.h) && (y+h > obj.y) && (y+h < obj.y+obj.h)) {
              x+=speed;
            }
      }
      if (x < obj.x + obj.w && x > obj.x + obj.w - obj.w/10 && h > obj.h) { // Big -> Small
          if ((obj.y > y) && (obj.y < y+h)) {
            x+=speed;
          } else
            if ((obj.y+obj.h > y) && (obj.y+obj.h < y+h)) {
              x+=speed;
            } else
              if ((obj.y > y) && (obj.y < y+h) && (obj.y+obj.h > y) && (obj.y+obj.h < y+h)) {
                x+=speed;
              }
        }
      // UP COLLISION
      if (y + h > obj.y && y + h < obj.y + obj.h/10 && w < obj.w) { // Small -> Big
      if ((x > obj.x) && (x < obj.x+obj.w)) {
          y-=speed;
        } else
          if ((x+w > obj.x) && (x+w < obj.x+obj.w)) {
            y-=speed;
          } else
            if ((x > obj.x) && (x < obj.x+obj.w) && (x+w > obj.x) && (x+w < obj.x+obj.w)) {
              y-=speed;
            }
      }
      if (y + h > obj.y && y + h < obj.y + obj.h/10 && w > obj.w) { // Big -> Small
       if ((obj.x > x) && (obj.x < x+w)) {
          y-=speed;
        } else
          if ((obj.x+obj.w > x) && (obj.x+obj.w < x+w)) {
            y-=speed;
          } else
            if ((obj.x > x) && (obj.x < x+w) && (obj.x+obj.w > x) && (obj.x+obj.w < x+w)) {
              y-=speed;
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
