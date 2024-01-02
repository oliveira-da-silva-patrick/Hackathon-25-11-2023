/**
  Author: Carlos
  Description: Paint
*/

/**
  The setup() function runs at the start of the program exactly once.
  This function also creates the background with the instructions
*/
void setup() {
  size(1000,1000);
  background(0);
}

/**
  The keyPressed() function acts whenever a key on the keyboard is pressed.
  Here it is used to change the stroke colour or to clear the drawing.
*/
void keyPressed(){
  if(key == 'c') clear();
  else if(key == 'q') stroke(255,0,0);
  else if(key == 'w') stroke(0,255,0);
  else if(key == 'e') stroke(0,0,255);
  else if(key == 'r') stroke(255,255,0);
  else if(key == 't') stroke(0,0,0);
  else if(key == 'z') stroke(147,0,255);
  else if(key == 'u') stroke(255,187,0);
  else if(key == 'i') stroke(0,255,227);
  else stroke(255,255,255);
}

void draw() {
  if (mousePressed){ // paint a line between current and previous mouse position if moose button is pressed
    strokeWeight(10);
    line(pmouseX, pmouseY,mouseX, mouseY);
  }
}
