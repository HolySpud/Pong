// Global Settings Variables
Boolean start = false;

class GameMenu {
char startLet, paddleCap, paddleLow, ballCap, ballLow, scoreCap, scoreLow;
int paddleSpeed, ballSpeed, scoreMax;

GameMenu() {
startLet = ' ';

paddleCap = 'B';
paddleLow = 'b';

ballCap = 'N';
ballLow = 'n';

scoreCap = 'M';
scoreLow = 'm';

paddleSpeed = 1;
ballSpeed = 1;
scoreMax = 3;

}

void menuGuide() {
PFont titleFont = createFont("Power Clear", 20);
gameBG.drawBG();
fill(#D05CEA); //Ink
textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
textFont(titleFont, width/15);
text("PONG", width/2, height/6);
textFont(titleFont, height/17);
text("(P) Controls", width/2, height/2.5);
text("(" + str(paddleCap) + ") " + "Paddle Speed: " + str(paddleSpeed), width/4, height/2);
text("(" + str(ballCap) + ") " + "Ball Speed: " + str(ballSpeed), width/2, height/2);
text("(" + str(scoreCap) + ") " + "Max score: " + str(scoreMax), width/1.35, height/2);
textFont(titleFont, width/25);
text("PRESS SPACE TO START", width/2, height/1.5);
}

void startBind() {
if (key == ' ' && start == false) {
 start = true;
 }
}

void paddleBind() {
if (key == 'B' || key == 'b' && paddleSpeed < 4 && start == false) {
   paddleSpeed++;
 } if (key == 'B' || key == 'b' && paddleSpeed == 4 && start == false) { 
   paddleSpeed = 1;
 }
}

void ballBind() {
if (key == 'N' || key == 'n' && ballSpeed < 4 && start == false) {
   ballSpeed++;
 } if (key == 'N' || key == 'n' && ballSpeed == 4 && start == false) {
   ballSpeed = 1;
 }
}

void scoreBind() {
if (key == 'M' || key == 'm' && scoreMax < 7 && start == false) {
   scoreMax++;
 } if (key == 'M' || key == 'm' && scoreMax == 7 && start == false) {
   scoreMax = 3;
 }
}

void allBind() {
startBind();
paddleBind();
ballBind();
scoreBind();
}

}
