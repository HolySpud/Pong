class Ball {
float x, y, d, xStart, yStart, xDirection, yDirection;
color c;
int xVel, yVel, score;

//int ballCount = 10;
Ball(float widthParameter, float heightParameter, color cParameter) {
this.x = widthParameter/2;
this.y = heightParameter/2;
xStart = x;
yStart = y;
d = heightParameter/25;
c = cParameter;
xVel = int(random(widthParameter/widthParameter, widthParameter/widthParameter*10));
yVel = int(random(heightParameter/heightParameter, heightParameter/heightParameter*10));
xDirection = int(random (-2, 2));
while (xDirection == 0) {xDirection = int(random (-2, 2));}
yDirection = int(random (-2, 2));
while (yDirection == 0) {yDirection = int(random (-2, 2));}
} //End Constructor
//
void drawCircle(Paddle left, Paddle right, ScoreBoard scoreRight, ScoreBoard scoreLeft) {
fill(c);
ellipse(x, y, d, d);
move(left, right, scoreRight, scoreLeft);
} //End Draw

void move(Paddle left, Paddle right, ScoreBoard scoreRight, ScoreBoard scoreLeft) {
x += xVel;
y += yVel;
bounce(left, right, scoreRight, scoreLeft);
paddleBounce();
}

void bounce(Paddle left, Paddle right, ScoreBoard scoreRight, ScoreBoard scoreLeft) {
// Horizontal Bouncing
if (x - d/2 <= width*0) {
xVel *= 0;
yVel *= 0;
scoreLeft.score++;
}
if (x + d/2 > width) {
xVel *= 0;
yVel *= 0;
scoreRight.score++;
}
// Paddle Bouncing (Left, Right)
if (y > left.y && y < left.y + left.h && x - d/2 <= left.x + left.w) {
xVel *= -1;
}
if (y > right.y && y < right.y + right.h && x + d/2 >= right.x) {
xVel *= -1;
}
// Vertical Bouncing
if (y - d/2 <= height*0 || y + d/2 > height) {
yVel *= -1;
}
}

void paddleBounce() {
}

void ballScore() {
}

} //End Ball
