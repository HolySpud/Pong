class Line extends Point {
float ptX, ptY;
Line(float x, float y, float ptX, float ptY) {
super(x, y);
this.ptX = ptX;
this.ptY = ptY;
}

void draw() {
line(x, y, ptX, ptY);
}

}
