//Global Variables
void setup() {
println("The Beginning");
size(500, 600);
textSetup();
}

void draw() {
textGen(purpleInk, titleFont, 30, CENTER, CENTER, title, titleX, titleY, titleWidth, titleHeight, resetColor); //Left Score
textGen(purpleInk, titleFont, 30, CENTER, TOP, title2, titleX, titleY, titleWidth, titleHeight, resetColor); //Right Score
}

void keyPressed() {}

void keyReleased() {}

void mousePressed() {}
