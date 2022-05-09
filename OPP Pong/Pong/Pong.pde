//Global Variables
Boolean win = false;

Ball gameBall;
Paddle rightPaddle;
Paddle leftPaddle;
Background gameBG;
ScoreBoard rightScoreBoard;
ScoreBoard leftScoreBoard;
GameMenu mainMenu;
Instructions tutorial;
//
Shape shape1 = new Shape(0,0,300,300) {
  void draw() {
  fill(#FFFFFF);
  rect(x,y,w,h);
  fill(#FFFFFF);
  }
  }
  ;
void setup() { //Start
  fullScreen(); // fullScreen(); displayWidth, displayHeight
  //Object, Class
  //Instructions, Features, and Hints for Easter Eggs
  
  //Constructors
  gameBall = new Ball(width/2, height/2, height/25, height/25, width, height, #1FFF03); // (X, Y, W, H, Width, Height, Color)
  rightPaddle = new Paddle(width - width/50, height/2, width/50, height/4, #1FFF03, 'i', 'k'); // (X, Y, W, H, Color, Up Key, Down Key)
  leftPaddle = new Paddle(0, height/2, width/50, height/4, #1FFF03, 'w', 's'); // (X, Y, W, H, Color, Up Key, Down Key)
  gameBG = new Background(#ffffff); // (Color)
  rightScoreBoard = new ScoreBoard(width - width/4 - (width/15)/2, height/20, width/15, height/15); // (X, Y, W, H)
  leftScoreBoard = new ScoreBoard(width/4 - width/15, height/20, width/15, height/15); // (X, Y, W, H)
  mainMenu = new GameMenu();
  tutorial = new Instructions();
  
  println("So cool...");
  // exit();
} //End
void draw() {
  if (start) {
  gameStart(); 
  } else if (start == false && info) {
  tutorial.instructionDraw(rightPaddle, leftPaddle);
  } else if (start == false) {
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
  tutorial.instructionExit();
}
void mousePressed() {
}
void mouseReleased() {
}
