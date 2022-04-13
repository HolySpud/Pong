//Global Variables
Ball gameBall;
Paddle rightPaddle;
Paddle leftPaddle;
Background gameBG;
ScoreBoard rightScoreBoard;
ScoreBoard leftScoreBoard;
//
void setup() { //Start
  fullScreen(); // fullScreen(); displayWidth, displayHeight
  //Object, Class
  //
  gameBall = new Ball(width, height, #1FFF03); // (X, Y, Size (Diameter), Color)
  rightPaddle = new Paddle(width - width/50, height/2, #1FFF03, 'i', 'k'); // (X, Y, Width, Height, Color, Up Key, Down Key)
  leftPaddle = new Paddle(0, height/2, #1FFF03, 'w', 's'); // 
  gameBG = new Background(#ffffff);
  rightScoreBoard = new ScoreBoard(width - width/4 - (width/15)/2);
  leftScoreBoard = new ScoreBoard(width/4 - width/15);
  //Constructors
  //
  
  println("So cool...");
  // exit();
} //End
void draw() {
gameBG.drawBG(); //BG Reset
gameBall.drawCircle(leftPaddle, rightPaddle, rightScoreBoard, leftScoreBoard); // Ball Draw
rightPaddle.drawPaddle(); // Right Paddle Draw
leftPaddle.drawPaddle(); // Left Paddle Draw
rightScoreBoard.drawScoreBoard(); // Right Scoreboard Draw
leftScoreBoard.drawScoreBoard(); // Left Scoreboard Draw

}
void keyPressed() {
  rightPaddle.moveStart();
  leftPaddle.moveStart();
}
void keyReleased() {
  rightPaddle.moveStop();
  leftPaddle.moveStop();
}
void mousePressed() {
}
void mouseReleased() {
}
