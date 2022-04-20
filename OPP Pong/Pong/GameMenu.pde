void gameMenu() {
PFont titleFont = createFont("Power Clear", 20);
gameBG.drawBG();
fill(#D05CEA); //Ink
textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
textFont(titleFont, 50);
text("PRESS SPACE TO START", width/2, height/3);
text("Paddle Speed: " + str(paddleSpeed), width/4, height/2);
text("Ball Speed: " + str(ballSpeed), width/2, height/2);
}

void menuBinds() {
 if (key == ' ' && start == false) {
 start = true;
 }
 // Paddle Settings
 if (key == 'O' || key == 'o' && paddleSpeed < 4 && start == false) {
   paddleSpeed++;
 } if (key == 'O' || key == 'o' && paddleSpeed == 4 && start == false) { 
   paddleSpeed = 1;
 }
 // Ball Settings
 if (key == 'P' || key == 'p' && ballSpeed < 4 && start == false) {
   ballSpeed++;
 } if (key == 'P' || key == 'p' && ballSpeed == 4 && start == false) {
    ballSpeed = 1;
 }
}
