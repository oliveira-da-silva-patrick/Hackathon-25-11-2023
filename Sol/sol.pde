/**
  Author: Sol
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
void draw() {
  uniLuBrush(); // use my brush
}   

/**
  The uniLuBrush() function is a brush I created to draw the Uni.lu logo.
  The logo's colour changes if the mouse button is held down while dragging.
*/
void uniLuBrush() {
  color col1 = #FA1212; // color to be applied on the Uni part of the logo
  color col2 = #12FAF4; // color to be applied on the .lu part of the logo
  if (mousePressed) { // if the mouse button is being held down, swap colors
    col1 = #12FAF4;
    col2 = #FA1212;
  }
  
  fill(col1); // use col1
  
  // LETTER U
  stroke(0); // set stroke (outline) colour to black
  rect(mouseX, mouseY, 25, 250); // draw the left part of the letter U
  rect(mouseX + 35, mouseY, 25, 250); // draw the right part of the letter U
  rect(mouseX, mouseY + 220, 35 + 25, 250 - 220); // draw the bottom part of the letter U with stroke
  stroke(col1); // set stroke (outline) colour to the same as fill colour
  line(mouseX + 1, mouseY + 220, mouseX + 25 - 1, mouseY + 220); // draw a line of same colour on top of line drawn on the left inside of the letter U
  line(mouseX + 35 + 1, mouseY + 220, mouseX + 35 + 25 - 1, mouseY + 220); // draw a line of same colour on top of line drawn on the right inside of the letter U
  
  // LETTER N
  stroke(0); // sets the outline colour to black
  rect(mouseX + 102, mouseY, 28, 30); // draw the top part of the letter N
  rect(mouseX + 80, mouseY, 25, 250); // draw the left part of the letter N
  rect(mouseX + 120, mouseY, 25, 250); // draw the right part of the letter N
  stroke(col1); // set stroke (outline) colour to the same as fill colour
  line(mouseX + 80 + 25, mouseY + 1, mouseX + 80 + 25, mouseY + 30 - 1); // draw a line of same colour on top of line drawn on the left inside of the letter N
  line(mouseX + 120, mouseY + 1, mouseX + 120, mouseY + 30 - 1); // draw a line of same colour on top of line drawn on the right inside of the letter N
  
  // LETTER I
  stroke(0); // sets the outline colour to black
  ellipse(mouseX + 178, mouseY - 50, 50, 50); // draw the dot of the letter I
  rect(mouseX+165,mouseY,25,250); // draw the letter I
  
  fill(col2);  // use col2
  
  ellipse(mouseX+210, mouseY+240, 25,25); // draw the dot
  rect(mouseX+230,mouseY,25,250); // draw the letter L
  
  // LETTER U
  stroke(0); // set stroke (outline) colour to black
  rect(mouseX + 270, mouseY + 50, 25, 200); // draw the left part of the letter U
  rect(mouseX + 310, mouseY + 50, 25, 200); // draw the right part of the letter U
  rect(mouseX + 270, mouseY + 220, 310 + 25 - 270, 250 - 220); // draw the bottom part of the letter U with stroke
  stroke(col2); // set stroke (outline) colour to the same as fill colour
  line(mouseX + 270 + 1, mouseY + 220, mouseX + 270 + 25 - 1, mouseY + 220); // draw a line of same colour on top of line drawn on the left inside of the letter U
  line(mouseX + 310 + 1, mouseY + 220, mouseX + 310 + 25 - 1, mouseY + 220); // draw a line of same colour on top of line drawn on the right inside of the letter U
}
