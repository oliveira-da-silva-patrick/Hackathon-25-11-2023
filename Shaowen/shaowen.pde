/**
  Author: Shaowen
  Description: Draw error message window
*/

/**
  The setup() function runs at the start of the program exactly once.
*/
void setup () {
  size (1000, 1000); // Changes the size of the application window to 1000x1000
}

/**
  The draw() function runs repeatedly (once per frame) until the application is closed.
*/
void draw () {
  errorBrush(); // use my brush
}

/**
  The errorBrush() function is a brush I created to draw an error message window.
*/
void errorBrush() {
  fill(#FFFFFF); // set the fill colour to white
  stroke(#000000); // set the outline colour to black
  rect(mouseX, mouseY, 110, 100); // draw the navigation bar
  rect(mouseX, mouseY + 16, 110, 84); // draw the message window
  fill(#FF0000); // set the fill color to red
  rect(mouseX+90, mouseY,20,16); // draw the exit button
  
  // draw the cross inside the exit button
  line(mouseX + 95, mouseY + 3,mouseX + 105,mouseY + 13); 
  line(mouseX + 95,mouseY + 13,mouseX + 105,mouseY +3);
  
  fill (#000000); // set the fill colour to black
  textSize(12); // set the text size to 12
  
  // add text into the error window
  text("Error", mouseX + 5, mouseY + 12);
  text("Processing wanted", mouseX + 5, mouseY + 28);
  text("to quit.", mouseX + 5, mouseY + 42);
}
