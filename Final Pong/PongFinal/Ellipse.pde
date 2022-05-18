class Ellipse extends Line {
Ellipse(float x, float y, float ptX, float ptY) {
super (x, y, ptX, ptY);
}

final void draw() {
stroke(#2B2B2B);
ellipse(x, y, ptX, ptY);
fill(#FFFFFF);
}
final color fillColour (color colour) {
return color(0,0,0);
}
}
