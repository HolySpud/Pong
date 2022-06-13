final class Enemy extends Entity {
  PImage sprite1;
  Enemy(float x, float y, float w, float h) {
    super(x, y);

    // Width Height
    this.w = w;
    this.h = h;

    // Hitbox
    wBox = w * 1.1;
    hBox = h * 1.1;
  }
  void draw() {
    rect(x, y, w, h);
  }
}
