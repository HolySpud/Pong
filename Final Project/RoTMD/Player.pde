final class Player extends Shape {
float diagSpeed, strSpeed, speed, w, h;
char upCap, upLow, downCap, downLow, leftCap, leftLow, rightCap, rightLow; //Key Bind Variables
Boolean moveCheckUp = false, moveCheckDown = false, moveCheckLeft = false, moveCheckRight = false; //Movement Variables
//Player Sprites
PImage left1, left2, front1, front2, front3, back1, back2, back3;
//Constructor
Player(float x, float y) {
super(x, y); //Super
speed = 10; //Character Speed
strSpeed = 10;
diagSpeed = sqrt((speed*speed)/2);
//Width, Height
w = height/40;
h = w;
//Up Bind
upCap = 'W';
upLow = 'w';
//Down Bind
downCap = 'S';
downLow = 's';
//Left Bind
leftCap = 'A';
leftLow = 'a';
//Right Bind
rightCap = 'D';
rightLow = 'd';
}
//Draw
void draw() {
move();
stroke(0);
rect(x, y, w, h); }

void move() {
if (moveCheckUp && y >= 0) {
y -= (speed);
}
if (moveCheckDown && y <= height) {
y += (speed);
}
if (moveCheckLeft && x >= 0) {
x -= (speed);
}
if (moveCheckRight && x <= width) {
x += (speed);
}
if (moveCheckUp && moveCheckLeft || moveCheckUp && moveCheckRight) {
speed = diagSpeed;
} else if (moveCheckDown == false) {
speed = strSpeed;
}
if (moveCheckDown && moveCheckLeft || moveCheckDown && moveCheckRight) {
speed = diagSpeed;
} else if (moveCheckUp == false) {
speed = strSpeed;
}

}

void moveStart() {
if (key == upCap || key == upLow) {
moveCheckUp = true;
}
if (key == downCap || key == downLow) {
moveCheckDown = true;
}
if (key == leftCap || key == leftLow) {
moveCheckLeft = true;
}
if (key == rightCap || key == rightLow) {
moveCheckRight = true;
}
}

void moveStop() {
if (key == upCap || key == upLow) {
moveCheckUp = false;
}
if (key == downCap || key == downLow) {
moveCheckDown = false;
}
if (key == leftCap || key == leftLow) {
moveCheckLeft = false;
}
if (key == rightCap || key == rightLow) {
moveCheckRight = false;
}
}
}
