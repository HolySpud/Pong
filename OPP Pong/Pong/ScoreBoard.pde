class ScoreBoard extends Shape {
color c;
int score;

ScoreBoard(float x, float y, float w, float h) {
super(x, y, w, h);
c = #808080;
score = 0;
}

void drawScore() {
PFont titleFont = createFont("Power Clear", 20);
String scoreText = str(score);
fill(#ffffff); //Ink
textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
textFont(titleFont, y/1.1); //Change the number until it fits, largest font size
text(scoreText, x, y, w, h);
}

void drawScoreBoard() {
fill(c);
rect(x, y, w, h);
drawScore();
}

}
