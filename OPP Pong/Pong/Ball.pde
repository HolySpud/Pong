class Ball {
float x, y, d;
color c;
Ball(float xParameter, float yParameter, float dParameter, color cParameter) { //Constructor is hard coded, not meant to be changed.
x = xParameter;
y = yParameter;
d = dParameter;
c = cParameter;
} //End Constructor
//
void drawCircle() {
fill(c);
ellipse(x, y, d, d);
} //End Draw
} //End Ball
