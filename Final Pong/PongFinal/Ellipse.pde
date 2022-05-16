class Ellipse extends Line {
Ellipse(float x, float y, float ptX, float ptY) {
super (x, y, ptX, ptY);
}
void draw() {
ellipse(x, y, ptX, ptY);
}
}
