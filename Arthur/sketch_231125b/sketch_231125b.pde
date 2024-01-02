/**
  Author: Arthur Julien
  Description: Draw random squares
*/

/**
  The setup() function runs at the start of the program exactly once.
*/
void setup () {
  size(500, 300); // Changes the size of the application window to 500x300
  noStroke(); // Removes the outline of shapes
  background(0); // Turns the background black
}

/**
  The draw() function runs repeatedly (once per frame) until the application is closed.
*/
void draw () {
  createRect(); // use my brush
}

/**
  The createRect() func creates random sized squares of random colours on random positions
*/
void createRect () {
  float xr = random(0, height);
  float yr = random(0, width);
  float sizerect = random(99);
  rect(yr, xr, sizerect, sizerect);
  fill(random(100, 200), random(100, 200), random(100, 200));
}
