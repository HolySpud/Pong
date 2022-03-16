class Ball {
float x, y, d;
color c;
int xVel, yVel;
Ball(float xParameter, float yParameter, float dParameter, color cParameter) { //Constructor is hard coded, not meant to be changed.
x = xParameter;
y = yParameter;
d = dParameter;
c = cParameter;
xVel = 10;
yVel = 10;
} //End Constructor
//
void drawCircle() {
fill(c);
ellipse(x, y, d, d);
move();
} //End Draw

void move() {
x += xVel;
y += yVel;
bounce();
}

void bounce() {
if (x - d/2 <= width*0 || x + d/2 > width) {
xVel *= -1;
}
if (y - d/2 <= height*0 || y + d/2 > height) {
yVel *= -1;
}
}

void paddleBounce() {
}
} //End Ball
