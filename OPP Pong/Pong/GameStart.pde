void gameStart() {
gameBG.drawBG(); //BG Reset
gameBall.drawCircle(leftPaddle, rightPaddle, rightScoreBoard, leftScoreBoard); // Ball Draw
rightPaddle.drawPaddle(); // Right Paddle Draw
leftPaddle.drawPaddle(); // Left Paddle Draw
rightScoreBoard.drawScoreBoard(); // Right Scoreboard Draw
leftScoreBoard.drawScoreBoard(); // Left Scoreboard Draw
}
