ArrayList<Shape> shapes = new ArrayList<Shape>();

void setup() {
  size(500,500);
  Circle head = new Circle (width/2, height/2, height/1.1);
  //Right Eye
  Circle rightEye = new Circle (width/2 + height/6, height/2 - height/6, height/5);
  Circle rightPupil = new Circle ( width/2 + height/6, height/2 - height/6, height/15);
  //Left Eye
  Circle leftEye = new Circle (width/2 - height/6, height/2 - height/6, height/5);
  Circle leftPupil = new Circle (width/2 - height/6, height/2 - height/6, height/15);
  //Mouth
  Ellipse mouth = new Ellipse (width/2, height/2 + height/4, height/2.5, height/14);
  //Nose
  Ellipse nostrilLeft = new Ellipse (width/2 + height/25, height/2 + height/15, height/20, height/30);
  Ellipse nostrilRight = new Ellipse (width/2 - height/25, height/2 + height/15, height/20, height/30);
  Ellipse noseBridge = new Ellipse (width/2, height/2 - height/18, height/30, height/5);
  //Add (Order doesn't matter)
  shapes.add(head);
  shapes.add(rightEye);
  shapes.add(leftEye);
  shapes.add(mouth);
  shapes.add(nostrilLeft);
  shapes.add(nostrilRight);
  shapes.add(noseBridge);
  shapes.add(rightPupil);
  shapes.add(leftPupil);
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
