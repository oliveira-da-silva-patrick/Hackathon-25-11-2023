/**
  Author: Louise + Capucine
  Description: Draw christmas gifts
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
  giftBrush();
}

/**
  The giftBrush() function is a brush we created to draw christmas gifts.
  The gift's colour changes if the mouse button is held down while dragging.
*/
void giftBrush() {
  if  (mousePressed) { // if left mouse button is being held down, change fill colour to red
    fill (#CB3538);
  } else {
    fill (#FFFFFF);
  }
  rect(mouseX, mouseY, 100, 100); // draw gift box
  fill(random(255), random(255), random(255)); // use random fill colour for gift knot
  
  // draw gift knot
  rect(mouseX + 45, mouseY, 10, 100);
  rect(mouseX, mouseY + 45, 100, 10);
  rect(mouseX + 45, mouseY + 45, 10, 10);
  triangle(mouseX + 50, mouseY, mouseX + 60, mouseY - 10, mouseX + 55, mouseY - 15);
  triangle(mouseX + 50, mouseY, mouseX + 40, mouseY - 10, mouseX + 45, mouseY - 15);
}
