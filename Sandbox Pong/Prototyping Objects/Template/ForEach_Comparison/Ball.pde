// Taken from Mr. Mercers github
class Ball {
  int x, y, directionX, directionY, moveX, moveY;
  float d;
  Ball (int width, int height) {
    this.x = width*1/2;
    this.y = height*1/2;
    this.directionX = int ( random (-2, 2) );
    while ( directionX==0 ) {
      this.directionX = int ( random (-2, 2) );
    } 
    this.directionY = int ( random (-2, 2) );
    while ( directionY==0 ) {
      this.directionY = int ( random (-2, 2) );
    } 
    this.moveX = int ( random (1, 10) );
    this.moveY = int ( random (1, 10) );
    d=width*1/50;
  }
  void draw() {
    ellipse(x, y, d, d);
    step();
  }
  void step() {
    x+=moveX*directionX;
    y+=moveY*directionY;
    if (x<0 || x>width) {
      directionX*=-width/width; //returns 1 but independant of display size
      moveX+=width/100; //returns scaled ratio of speed 5, independant of display size
    }
    if (y<0 || y>height) {
      directionY*=-height/height; //returns 1 but independant of display size
      moveY+=height/50; //returns scaled ratio of speed 10, independant of display size
    }
  }
}//End Ball
