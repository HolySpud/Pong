final class Enemy extends Entity {
  PImage sprite1;
  Enemy(float x, float y) {
    super(x, y);

    // Width Height
    w = 100;
    h = 100;

    // Hitbox
    wBox = w * 1.1;
    hBox = h * 1.1;
  }
  void draw() {
    rect(x, y, w, h);
  }
}
