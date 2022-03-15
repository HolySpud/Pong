class Paddle {
float x, y, w, h;
color c;
int yVel;

Paddle(float xParameter, float yParameter, float wParameter, float hParameter, color cParameter) {
x = xParameter;
y = yParameter;
w = wParameter;
h = hParameter;
c = cParameter;
yVel = 10;
}

void drawPaddle() {
fill(c);
rect(x, y - h/2, w, h);
}

void move() {
}
}
