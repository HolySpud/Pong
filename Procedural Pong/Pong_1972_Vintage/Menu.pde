void mainMenu() {
paddleSpeed();
keyStart();
}

void keyStart() {
if (start == false) {
if (key == ' ') {
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
