final class Enemy extends Shape {
float diagSpeed, strSpeed, speed, range, w, h, wBox, hBox;
Boolean moveCheckUp = false, moveCheckDown = false, moveCheckLeft = false, moveCheckRight = false; //Movement Variables
PImage sprite1;
Enemy(float x, float y) {
super(x, y);

// Width Height
w = 10;
h = 10;

// Hitbox 
wBox = w * 1.1;
hBox = h * 1.1;
}
void draw() {
rect(x, y, w, h);
}
}
