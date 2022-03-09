void mainMenu() {
PFont titleFont = createFont("Power Clear", 20);
String paddleBool = str(scoreLeft);
fill(#D05CEA); //Ink
textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
textFont(titleFont, 30);
text("PRESS SPACE TO START", width/2, height/2);
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
velPaddleRight *= 1.3;
velPaddleLeft *= 1.3;
}
}
}
