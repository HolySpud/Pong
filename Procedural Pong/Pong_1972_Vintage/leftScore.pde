void leftScoreDraw() {
leftScoreStart();
leftScoreText();
}

void leftScoreStart() {
rect(xLeftScore, yLeftScore, widthScore, heightScore);
}

void leftScoreText() {
PFont titleFont = createFont("Power Clear", 20);
String scoreText = str(scoreLeft);
fill(#D05CEA); //Ink
textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
textFont(titleFont, yRightScore/1.1); //Change the number until it fits, largest font size
text(scoreText, xLeftScore, yLeftScore, widthScore, heightScore);
}
