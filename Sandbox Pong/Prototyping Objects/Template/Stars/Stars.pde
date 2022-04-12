int NumberOfStars = 50;
int appWidth, appHeight;
int smallerDisplayDimension;
boolean redo = true;
Ball[] stars = new Ball[NumberOfStars];

void setup() {
size(500, 500);
appWidth = width;
appHeight = height;
smallerDisplayDimension = (appWidth <= appHeight) ? appWidth : appHeight;
for (int i = 0; i < stars.length; i++) {
  float diameterRandom = random (smallerDisplayDimension/200, smallerDisplayDimension/120);
  float xRandom = random (0 + diameterRandom, appWidth - diameterRandom/2);
  float yRandom = random (0 + diameterRandom, appHeight - diameterRandom/2);
  stars[i] = new Ball (xRandom, yRandom, diameterRandom);
  xRandom = random (0 + diameterRandom, appWidth - diameterRandom/2);
}
}

void draw() {
for (int i = 0; i < stars.length; i++) {
stars[i].drawStar();
}
}

void keyPressed() {}

void mousePressed() {}
