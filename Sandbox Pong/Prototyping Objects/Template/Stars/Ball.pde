class Ball {
float x, y, d;
color c;
int xVel, yVel, score;

//int ballCount = 10;
Ball(float widthParameter, float heightParameter, float dParameter) {
x = widthParameter;
y = heightParameter;
d = dParameter;
} //End Constructor
//
void drawStar() {
fill(c);
ellipse(x, y, d, d);
}

} //End Draw
