ArrayList<Shape> shapes = new ArrayList<Shape>();

void setup() {
size(500, 500);
fill();
}

void draw() {
rect(0, 0, width, height);
for (Shape s : shapes) {
    s.draw();
  }
}

void keyPressed() {

}

void keyReleased() {}
