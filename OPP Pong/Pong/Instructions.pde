Boolean info = false;

class Instructions {
String controlsRight;
float widthParameter, heightParameter, fontSize;
Instructions() {
  widthParameter = width;
  heightParameter = height;
  fontSize = heightParameter/20;
}
void instructionDraw(Paddle paddleCtrlRight, Paddle paddleCtrlLeft) {
PFont titleFont = createFont("Power Clear", 20);
gameBG.drawBG();
fill(#D05CEA); //Ink
textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
textFont(titleFont, width/15);
text("CONTROLS", width/2, height/6);
textFont(titleFont, fontSize); // Font Size
text("The right paddle moves up with " + "(" + str(paddleCtrlRight.up).toUpperCase() + ")", width/1.33, height/2); // Paddle Right Top
text("and moves down with " + "(" + str(paddleCtrlRight.down).toUpperCase() + ")", width/1.33, height/2 + fontSize); // Paddle Right Bottom
text("The left paddle moves up with " + "(" + str(paddleCtrlLeft.up).toUpperCase() + ")", width/4, height/2); // Paddle Left Top
text(" and moves down with " + "(" + str(paddleCtrlLeft.down).toUpperCase() + ")", width/4, height/2 + fontSize); // Paddle Left Bottom
textFont(titleFont, height/17);
text("(P) Main Menu", width/2, height/2.5);
}

void instructionExit() {
 if (key == 'p' && info == false && start == false) { // Lowercase Input
   info = true;
 } else if (key == 'p' && info == true) {
   info = false;
 }
 if (key == 'P' && info == false && start == false) { // Capitalized Input
   info = true;
 } else if (key == 'P' && info == true) {
   info = false;
 }
}
}
