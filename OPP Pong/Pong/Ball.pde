class Ball extends Shape {
float xStart, yStart;
color c;
int xVel, yVel, score, xDirection, yDirection;

//int ballCount = 10;
Ball(float x, float y, float w, float h, float widthParameter, float heightParameter, color cParameter) {
super(x, y, w, h);
xStart = x;
yStart = y;
c = cParameter;
xDirection = int(random (-2, 2));
while (xDirection == 0) {xDirection = int(random (-2, 2));}
yDirection = int(random (-2, 2));
while (yDirection == 0) {yDirection = int(random (-2, 2));}
xVel = int(random(widthParameter/widthParameter, widthParameter/widthParameter*10)) * xDirection;
yVel = int(random(heightParameter/heightParameter, heightParameter/heightParameter*10)) * yDirection;
} //End Constructor
//
void drawCircle(Paddle left, Paddle right, ScoreBoard scoreRight, ScoreBoard scoreLeft, GameMenu mainMenu) {
fill(c);
ellipse(x, y, w, h);
move(left, right, scoreRight, scoreLeft, mainMenu);
} //End Draw

void scoreCheck(ScoreBoard scoreRight, ScoreBoard scoreLeft, GameMenu menuMain) { // Checks when player has reached end score and provides a "win" screen
if (scoreRight.score >= menuMain.scoreMax || scoreLeft.score >= menuMain.scoreMax && win == false) {
  textAlign(CENTER, CENTER);
  text("YOU WIN", width/2, height/10);
  xVel *= 0;
  yVel *= 0;
  x = xStart;
  y = yStart;
  test();
  } 
}

void test() {
start = false;
delay(1000);
}

void score() { // Score function that resets ball position and randomizes it's velocity and direction
  xVel *= 0;
  yVel *= 0;
  x = xStart;
  y = yStart;
  delay(1000);
  xDirection = int(random (-2, 2));
  while (xDirection == 0) {xDirection = int(random (-2, 2));}
  yDirection = int(random (-2, 2));
  while (yDirection == 0) {yDirection = int(random (-2, 2));}
  xVel = int(random(x/x, x/x*10)) * xDirection;
  yVel = int(random(y/y, y/y*10)) * yDirection;
}

void move(Paddle left, Paddle right, ScoreBoard scoreRight, ScoreBoard scoreLeft, GameMenu menuMain) { // 
x += (xVel * menuMain.ballSpeed);
y += (yVel * menuMain.ballSpeed);
bounce(left, right, scoreRight, scoreLeft);
scoreCheck(scoreRight, scoreLeft, menuMain);
paddleBounce();
}

void bounce(Paddle left, Paddle right, ScoreBoard scoreRight, ScoreBoard scoreLeft) {
// Horizontal Bouncing
if (x - w/2 <= width*0) {
scoreLeft.score++;
score();
}
if (x + w/2 > width) {
scoreRight.score++;
score();
}
// Paddle Bouncing (Left, Right)
if (y > left.y && y < left.y + left.h && x - w/2 <= left.x + left.w) {
xVel *= -1;
}
if (y > right.y && y < right.y + right.h && x + w/2 >= right.x) {
xVel *= -1;
}
// Vertical Bouncing
if (y - w/2 <= height*0 || y + w/2 > height) {
yVel *= -1;
}
}

void paddleBounce() {
}

void ballScore() {
}

} //End Ball
