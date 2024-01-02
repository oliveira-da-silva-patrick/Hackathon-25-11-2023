/**
  Author: Leandro
  Description: Draw a kite
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
  kiteBrush();
}

void kiteBrush() {
  // change colour whether mouse is pressed or not
  if  (mousePressed) {
    fill (#FA0532);
  }
  else {
    fill (#05FA2B);
  } 
  // draw kite
  line (mouseX, mouseY +40, mouseX, mouseY +150);
  triangle (mouseX, mouseY+10,mouseX-60,mouseY+70,mouseX+60,mouseY+70);
  triangle (mouseX, mouseY+40,mouseX-60,mouseY+70,mouseX+60,mouseY+70);
}
