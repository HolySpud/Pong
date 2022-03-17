class Ball {
float x, y, d, xStart, yStart, xDirection, yDirection;
color c;
int xVel, yVel;
Ball(float widthParameter, float heightParameter, color cParameter) {
this.x = widthParameter/2;
this.y = heightParameter/2;
xStart = x;
yStart = y;
d = height/25;
c = cParameter;
xVel = int(random(widthParameter/widthParameter, widthParameter/widthParameter*5));
yVel = int(random(heightParameter/heightParameter, heightParameter/heightParameter*5));
xDirection = int(random (-2, 2));
while (xDirection == 0) {xDirection = int(random (-2, 2));}
yDirection = int(random (-2, 2));
while (yDirection == 0) {yDirection = int(random (-2, 2));}
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
paddleBounce();
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
