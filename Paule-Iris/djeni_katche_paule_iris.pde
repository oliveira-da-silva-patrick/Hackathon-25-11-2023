/**
  Author: Djeni
  Description: Draw the uni.lu logo
*/

/**
  The setup() function runs at the start of the program exactly once.
*/
void setup () {
  size (480, 480); // Changes the size of the application window to 480x480
}

/**
  The draw() function runs repeatedly (once per frame) until the application is closed.
*/
void draw () {
  phoneBrush();
}

/**
  The phoneBrush() function is a brush I created to draw a phone.
*/
void phoneBrush() {
  fill (#FFFFFF);
  rect (mouseX, mouseY, 200, 120);
  rect (mouseX +10, mouseY +10, 170, 100);
  ellipse (mouseX +190, mouseY +60, 10, 10);
}
