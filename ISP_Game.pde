
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
  x = 300;
  s = 0;
}

void draw() {
  background(255);

  fill(0);
  rect(0, 0, 75, 600);
  rect(325, 0, 75, 600);
  // create the position of the climber
  fill(60, 250, 50);
  ellipse(x, 400, 50, 50);
  if (x<220){
   s=0;
  }
  if (x>420){
   s=0;
  }
  text('x'+x,50,50);
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