void finish() {
  box = new Player(width/2, height/2);
  shapes.add(box);
  
  box1 = new Enemy(width/3, height/3, 100, 100);
  shapes.add(box1);
  
  box2 = new Enemy(200, 200, 75, 75);
  shapes.add(box2);
}
