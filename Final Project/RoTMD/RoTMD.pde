ArrayList<Shape> shapes = new ArrayList<Shape>();
int m;
Player box;
Enemy box1, box2;
void setup() {
  fullScreen();
  finish();
}

void draw() {
  m = millis();
  rect(0, 0, width, height);
  for (Shape s : shapes) {
    s.draw();
  }
}

void keyPressed() {
  box.moveStart();
}

void keyReleased() {
  box.moveStop();
}

void mousePressed() {
}
