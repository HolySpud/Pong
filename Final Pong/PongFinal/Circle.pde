class Circle extends Point {
  float diameter;
  Circle(float x, float y, float diameter) {
  super(x, y);
  this.diameter = diameter;
  }
  
void draw() {
stroke(#2B2B2B); // Non-White Color
circle (x, y, diameter);
fill(#FFFFFF); // White Color
}
}
