class Player extends Shape {
//Control Speed
int speed;
//Player Sprites
PImage left1, left2, front1, front2, front3, back1, back2, back3;
//Constructor
Player(float x, float y) {
super(x, y); }
//Draw
void draw() {
stroke(0);
rect(x, y, 10, 10); }

void move() {
if (key == 'w' || key == 'W') {
x++;
}
}
}
