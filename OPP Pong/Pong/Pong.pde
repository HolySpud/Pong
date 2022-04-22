//Global Variables
Boolean win = false;

Ball gameBall;
Paddle rightPaddle;
Paddle leftPaddle;
Background gameBG;
ScoreBoard rightScoreBoard;
ScoreBoard leftScoreBoard;
GameMenu mainMenu;
//
void setup() { //Start
  fullScreen(); // fullScreen(); displayWidth, displayHeight
  //Object, Class
  //
  gameBall = new Ball(width, height, #1FFF03); // (X, Y, Size (Diameter), Color)
  rightPaddle = new Paddle(width - width/50, height/2, #1FFF03, 'i', 'k'); // (X, Y, Width, Height, Color, Up Key, Down Key)
  leftPaddle = new Paddle(0, height/2, #1FFF03, 'w', 's'); // (X, Y, Width, Height, Color, Up Key, Down Key)
  gameBG = new Background(#ffffff); // (Color)
  rightScoreBoard = new ScoreBoard(width - width/4 - (width/15)/2); // (X)
  leftScoreBoard = new ScoreBoard(width/4 - width/15); // (X)
  mainMenu = new GameMenu();
  //Constructors
  //
  
  println("So cool...");
  // exit();
} //End
void draw() {
  if (start) {
  gameStart();
  } else {
  mainMenu.menuGuide();
  }
  
}

void keyPressed() {
  rightPaddle.moveStart();
  leftPaddle.moveStart();
}
void keyReleased() {
  rightPaddle.moveStop();
  leftPaddle.moveStop();
  mainMenu.allBind();
}
void mousePressed() {
}
void mouseReleased() {
}
