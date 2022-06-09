abstract class Entity extends Shape {
  float diagSpeed, strSpeed, speed, range, wBox, hBox, projW, projH;
  Boolean moveCheckUp = false, moveCheckDown = false, moveCheckLeft = false, moveCheckRight = false;
  Entity(float x, float y) {
  super(x, y);
  }
}
