int appWidth, appHeight;
int smallerDisplayDimension;
Ball star;

void setup() {
size(500, 500);
appWidth = width;
appHeight = height;
smallerDisplayDimension = (appWidth <= appHeight) ? appWidth : appHeight;
star = new Ball(appWidth/2, appHeight/2, #FFFFFF, smallerDisplayDimension/120);
}

void draw() {
star.drawStar();
}

void keyPressed() {}

void mousePressed() {}
