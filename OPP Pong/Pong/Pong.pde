//Global Variables
Ball gameBall;
Paddle rightPaddle;
Paddle leftPaddle;
Background gameBG;
//
void setup() { //Start
  size(1000, 800); // fullScreen(); displayWidth, displayHeight
  //Object, Class
  //
  gameBall = new Ball(width/2, height/2, 30, #1FFF03); // (X, Y, Size (Diameter), Color)
  rightPaddle = new Paddle(width - width/50, height/2, width/50, height/4, #1FFF03, 'w', 's'); // (X, Y, Width, Height, Color, Up Key, Down Key)
  leftPaddle = new Paddle(0, height/2, width/50, height/4, #1FFF03, 'w', 's'); // 
  gameBG = new Background(#ffffff);
  //Constructors
  //
  
  println("So cool...");
  // exit();
} //End
void draw() {
gameBG.drawBG(); //BG Reset
gameBall.drawCircle(); // Ball Draw
rightPaddle.drawPaddle(); // Right Paddle Draw
leftPaddle.drawPaddle(); // Left Paddle Draw
}
void keyPressed() {
  rightPaddle.moveStart();
}
void keyReleased() {
  rightPaddle.moveStop();
}
void mousePressed() {
}
void mouseReleased() {
}
