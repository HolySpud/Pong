class Circle extends Point {
  float diameter;
  Circle(float x, float y, float diameter) {
  super(x, y);
  this.diameter = diameter;
  }
  
void draw() {
circle (x, y, diameter);
}
}
