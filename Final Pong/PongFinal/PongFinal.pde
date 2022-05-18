ArrayList<Shape> shapes = new ArrayList<Shape>();

void setup() {
size(500, 500);
  float x = width/4;
  float y = height/4;
  float ptX = width*3/4;
  float ptY = height/4;
  float diameter = width/5;
  Point p = new Point (x-width*1/16, y);
  Line l = new Line (x, y, ptX, ptY);
  Circle c = new Circle (x, y, diameter);
  Circle head = new Circle (width/2, height/2, width/1.1);
  shapes.add(p);
  shapes.add(l);
  shapes.add(c);
  shapes.add(head);
}// Setup END

void draw() {
rect(0, 0, width, height);
for (Shape s : shapes) {
    s.draw();
  }
}

void keyPressed() {

}

void keyReleased() {

}
