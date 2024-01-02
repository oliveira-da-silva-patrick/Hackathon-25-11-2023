/**
  Author: Liana
  Description: Draw a balloon
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
  pinselBallon(); // use my brush
}

/**
  The pinselBallon() function is a brush I created to draw a balloon.
  The balloon's colour changes if the mouse button is held down while dragging.
*/
void pinselBallon(){
  if (mousePressed) { // if the mouse button is being held down, change fill colour to #D191CA
    fill (#D191CA);
  } else { // if the mouse button is NOT being held down, change fill colour to #6DE0DD
    fill (#6DE0DD);
  }
  ellipse(mouseX, mouseY, 200, 200); // draw the main part of the balloon
  triangle(mouseX, mouseY + 100, mouseX + 50, mouseY + 150, mouseX - 50, mouseY + 150); // draw the knot of the balloon
  
  fill (#000000); // change fill colour to black
  ellipse(mouseX, mouseY, 50, 50); // draw the sticker on the balloon
}
