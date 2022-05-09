void gameStart() {
gameBG.drawBG(); //BG Reset
gameBall.drawCircle(leftPaddle, rightPaddle, rightScoreBoard, leftScoreBoard, mainMenu); // Ball Draw
rightPaddle.drawPaddle(mainMenu); // Right Paddle Draw
leftPaddle.drawPaddle(mainMenu); // Left Paddle Draw
rightScoreBoard.drawScoreBoard(); // Right Scoreboard Draw
leftScoreBoard.drawScoreBoard(); // Left Scoreboard Draw
}
