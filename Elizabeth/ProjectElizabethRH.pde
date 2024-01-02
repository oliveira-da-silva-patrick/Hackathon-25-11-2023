/**
  Author: Elizabeth
  Description: Draw a fish
*/

/**
  The setup() function runs at the start of the program exactly once.
*/
void setup () {
  size (500, 500); // Changes the size of the application window to 500x500
  background(#135BD3); // change the background to blue
}
  
// everything that is written here will be executed continuously until you close the frame…
void draw() {
  fishBrush(); // use my brush  
}
 
/**
  The fishBrush() function is a brush I created to draw a fish.
  The fish's colour changes and its eyes close when the mouse is pressed.
*/
void fishBrush() {
  boolean draweye = false; // flag to know if eyes are open or closed
  
  // apply colour and check whether eye should be drawn or not
  if (mousePressed) {
    fill(#D31313);
  } else if (!mousePressed) { 
    draweye = true;
    fill(#95C2FF);
  }
  
  // draw fish
  ellipse(mouseX, mouseY, 200, 200);
  line(mouseX - 20, mouseY + 20, mouseX - 100, mouseY + 20);
  triangle(mouseX + 100, mouseY, mouseX + 150, mouseY + 50, mouseX + 145, mouseY - 50);
  
  // draw eye
  if (draweye) {
    ellipse(mouseX, mouseY - 35, 20, 30);
  } else {
    line(mouseX - 10, mouseY - 35, mouseX + 10, mouseY - 35);
  }
}
    
