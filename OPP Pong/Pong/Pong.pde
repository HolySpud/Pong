//Global Variables
Ball gameBall;
Paddle rightPaddle;
Paddle leftPaddle;
Background gameBG;
//
void setup() { //Start
  size(900, 800); // fullScreen(); displayWidth, displayHeight
  //Object, Class
  gameBall = new Ball(width/2, height/2, 30, #1FFF03);
  rightPaddle = new Paddle(width - width/50, height/2, width/50, height/4, #1FFF03);
  leftPaddle = new Paddle(0, height/2, width/50, height/4, #1FFF03);
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
leftPaddle.drawPaddle();

}
void keyPressed() {
}
void keyReleased() {
}
void mousePressed() {
}
void mouseReleased() {
}
