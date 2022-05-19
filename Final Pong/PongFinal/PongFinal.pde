ArrayList<Shape> shapes = new ArrayList<Shape>();

void setup() {
  size(500,500);
  Circle head = new Circle (width/2, height/2, height/1.1);
  Circle rightEye = new Circle (width/2 + height/6, height/2 - height/6, height/5);
  Circle leftEye = new Circle (width/2 - height/6, height/2 - height/6, height/5);
  Ellipse mouth = new Ellipse (width/2, height/2 + height/4, height/2.5, height/14);
  Ellipse nostrilLeft = new Ellipse (width/2 + height/25, height/2 + height/15, height/20, height/30);
  Ellipse nostrilRight = new Ellipse (width/2 - height/25, height/2 + height/15, height/20, height/30);
  shapes.add(head);
  shapes.add(rightEye);
  shapes.add(leftEye);
  shapes.add(mouth);
  shapes.add(nostrilLeft);
  shapes.add(nostrilRight);
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
