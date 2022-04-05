class Ball {
float x, y, d, xStart, yStart, xDirection, yDirection;
color c;
int xVel, yVel, score;

//int ballCount = 10;
Ball(float widthParameter, float heightParameter, color cParameter, float dParameter) {
x = widthParameter;
y = heightParameter;
d = dParameter;
c = cParameter;
} //End Constructor
//
void drawStar() {
fill(c);
ellipse(x, y, d, d);
}

} //End Draw
