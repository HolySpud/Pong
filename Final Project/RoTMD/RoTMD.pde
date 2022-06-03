ArrayList<Shape> shapes = new ArrayList<Shape>();
Player box;
void setup() {
fullScreen();
finish();
}

void draw() {
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
box.attack();
}
