/**
  Author: Chiana + Fynn
  Description: Draw a cat head
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
  // if the mouse is pressed apply a colour based on the mouse's position else use default brown
  if (mousePressed) {
    float r = (float)mouseX/width * 256;
    float g = (float)mouseY/height* 256;
    float b = 0;
    fill(color(r,g,b));
  } else {
    fill (#985A0E); 
  }
  catBrush(); // use our brush
}

/**
  The catBrush() function is a brush we created to draw the cat.
*/
void catBrush () {
  // EARS
  triangle(mouseX +5,mouseY -50,mouseX -100, mouseY -150,mouseX -100,mouseY -2);
  triangle(mouseX -5,mouseY -50,mouseX +100, mouseY -150,mouseX +100,mouseY -2);
  // HEAD
  ellipse(mouseX,mouseY,200,200);
  // FACE
  fill (#FFFFFF);
  ellipse(mouseX -35 ,mouseY -20 ,50,50);
  ellipse(mouseX +35 ,mouseY -20 ,50,50); 
  fill (0);
  ellipse(mouseX -35 ,mouseY -20 ,20,20);
  ellipse(mouseX +35 ,mouseY -20 ,20,20); 
  triangle(mouseX -10, mouseY, mouseX +10, mouseY,mouseX,mouseY +20);
  line(mouseX,mouseY+20,mouseX-23,mouseY+40);
  line(mouseX,mouseY+20,mouseX+23,mouseY+40);
}
