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
  Circle head = new Circle (width/2, height/2, height/1.1);
  Circle rightEye = new Circle (width/2 + width/6, height/2 - height/6, height/5);
  Circle leftEye = new Circle (width/2 - width/6, height/2 - height/6, height/5);
  Ellipse mouth = new Ellipse (width/2, height/2 + height/4, height/2.5, height/14);
  shapes.add(p);
  shapes.add(l);
  shapes.add(c);
  shapes.add(head);
  shapes.add(rightEye);
  shapes.add(leftEye);
  shapes.add(mouth);
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
