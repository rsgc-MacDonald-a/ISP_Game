
float climberY;     // tracks position of dino
float climberS;     // tracks speed of dino
float climberA;    // tracks acceleration of the dino
float climberX;
int x; // tracks horizontal position of x value
int s; // speed of x value
float gravity;  //the debris gravity
float s1; //speed of debris
float a1;//acceleration of debris
float x1;//x of debris #1
float y1;//y of debris #1
float x2;//x of debris #2
float y2;//y of debris #2
float x3;//x of debris #3
float y3;//y of debris #3

//float distance;  //distance between climber and the debri
void setup() {

  //draw canvas
  size(400, 600);

  // ?
  x = 300;
  s = 0;
  x1=100;
  y1=-75;
  x2=175;
  y2=-500;
  x3=250;
  y3=-300;
}

void draw() {
  //to stop when it hits the left wall
  if (x < 103) {
    s=0;
  }

  //to stop climber when it hits the right wall
  if (x > 300) {
    s=0;
  }

  // To create the animation clears the background
  background(255);

  //draw the walls
  fill(0);
  rect(0, 0, 75, 600);    //left
  rect(325, 0, 75, 600);  //right

  // create the position of the climber
  fill(60, 250, 50);
  ellipse(x, 400, 50, 50);

  //draw and create position of debree#1
  fill(50, 100, 50);
  rect(x1, y1, 50, 50);

  //draw and create position of debree#2
  rect(x2, y2, 50, 50);

  //draw and create position of debree#3
  rect(x3, y3, 50, 50);
  y1=y1+3;
  y2=y2+3;
  y3=y3+3;

  if (y1 > 600) {
    y1= -50;
  }
   if (y2 > 600) {
    y2= -50;
  }
   if (y3 > 600) {
    y3= -50;
  }
    //X coordinate
  fill(255, 155, 255);
  text('x'+x, 50, 50);
  x = x + s;
}
//update the debris positioning
void update(float gravity) {
  rect(x1, y1, 50, 50);

  //change the speed
  s1 = s1 + a1;

  //create the apperance moving by changing the y position
  y1 = y1 + s1;
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