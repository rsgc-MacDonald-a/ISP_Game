
float climberY;     // tracks position of dino
float climberS;     // tracks speed of dino
float climberA;    // tracks acceleration of the dino
float climberX;
int x; // tracks horizontal position of x value
int s; // speed of x value

//float distance;  //distance between climber and the debri
void setup() {

  //draw canvas
  size(400, 600);

  // ?
  x = 300;
  s = 0;
}

void draw() {

  // To create the animation clears the background
  background(255);

  //draw the walls
  fill(0);
  rect(0, 0, 75, 600);    //left
  rect(325, 0, 75, 600);  //right

  // create the position of the climber
  fill(60, 250, 50);
  ellipse(x, 400, 50, 50);

  //to stop when it hits the left wall
  if (x < 100) {
    s=0;
  }

  //to stop climber when it hits the right wall
  if (x > 420) {
    s=0;
  }

  text('x'+x, 50, 50);
  x = x + s;
}

//Make the Climber go across the screen
void keyPressed() {
  if (key==CODED) {
    if ( keyCode == LEFT) {
      s = - 4;
    }
    if ( keyCode == RIGHT) {
      s = 4;
    }
  }
}
void keyReleased() {
  if (key==CODED) {
    if ( keyCode == LEFT) {
      s = 0;
    }
    if ( keyCode == RIGHT) {
      s = 0;
    }
  }
}