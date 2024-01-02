/**
  Author: Samir + Enes
  Description: Draw Amogus with random outfit colours
*/

/**
  The setup() function runs at the start of the program exactly once.
*/
void setup () {
  size (600, 600); // Changes the size of the application window to 600x600
}

/**
  The draw() function runs repeatedly (once per frame) until the application is closed.
*/
void draw() {
  if (mousePressed) { // act only when mouse is held down
    fill(random(255),random(255),random(255)); // set fill colour to random colour
    amogus(); // apply my brush
    delay(25); // halt for 25ms
  }
}

/**
  The amogus() function is a brush we created to draw Amogus.
*/
void amogus() {
  rect(mouseX - 30, mouseY + 40, 25, 40, 4); // draw the right leg
  rect(mouseX + 5, mouseY + 40, 25, 40, 4); // draw the left leg
  rect(mouseX + 35, mouseY - 20, 20, 40, 10); // draw the backpack
  ellipse(mouseX, mouseY, 85, 120); // draw the body
  
  // eye window
  fill(3, 81, 140); // set the fill colour to dark blue
  ellipse(mouseX - 10, mouseY - 20, 40, 15); // draw the eye window shadow
  fill(39, 140, 217); // set the fill colour to a lighter blue
  ellipse(mouseX - 14, mouseY - 21, 32, 15); // draw the eye window
  fill(255); // set the fill colour to white
  ellipse(mouseX - 15, mouseY - 22, 23, 12); // draw the window reflection
}
