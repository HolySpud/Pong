void rightScoreDraw() {
rightScoreStart();
rightScoreText();
}

void rightScoreStart() {
rect(xRightScore, yRightScore, widthScore, heightScore);
}

void rightScoreText() {
PFont titleFont = createFont("Power Clear", 20);
String scoreText = str(score);
fill(#D05CEA); //Ink
textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
textFont(titleFont, yRightScore/1.1); //Change the number until it fits, largest font size
text(scoreText, xRightScore, yRightScore, widthScore, heightScore);
}
