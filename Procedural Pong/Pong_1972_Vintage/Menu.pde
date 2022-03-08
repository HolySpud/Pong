void mainMenu() {
PFont titleFont = createFont("Power Clear", 20);
String scoreText = str(scoreLeft);
fill(#D05CEA); //Ink
textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference

}

void keyStart() {
if (start == false) {
if (key == ' ') {
delay(300);
start = true;
}
}
}

void paddleSpeed() {
if (start == false) {
if (key == 'j') {
velPaddleRight *= 2;
velPaddleLeft *= 2;
}
}
}
