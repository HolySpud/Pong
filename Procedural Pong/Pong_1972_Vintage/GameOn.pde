void gameDraw() {
//Background
  fill(0);
  rect(0, 0, width, height);
  //Ball
  fill(255); 
  ball();
  //Paddles (Right, Left)
  leftPaddleDraw();
  rightPaddleDraw();
  //Nets (Middle, Right, Left)
  stroke(255);
  netsAll();
  //Scores (Right, Left)
  rightScoreDraw();
  fill(255);
  leftScoreDraw();
  //Movement
}
