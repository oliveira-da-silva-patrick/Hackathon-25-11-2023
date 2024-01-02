/**
  Author: Mikhail
  Description: Painting Sandbox
*/

/**
  The setup() function runs at the start of the program exactly once.
  This function also creates the background with the instructions
*/
void setup () {
  fill(0,206,0);
  rect(0,0,1920,1080);
  size (1920, 1080);
  fill(0,0,0);
  textSize(128);
  text("create world", 500, 400);
  textSize(50);
  text("w - water e - erase r - new  p - person h - house  m - mountain click - tree", 400, 600);
  text("s - save screen shoot    click restart to hide text", 400, 650);
}

/**
  The draw() function runs repeatedly (once per frame) until the application is closed.
*/
void draw () {
  if (mousePressed) { // if left mouse button is pressen, draw a tree
    treeBrush();
  }
  if  (keyPressed) {
    if (key == 'p') { // if the 'p' key is pressed, draw a person
      personBrush();
    }
    if (key == 'w') { // if the 'w' key is pressed, draw water
      waterBrush();
    }
    if (key == 'e') { // if the 'e' key is pressed, use the eraser
      eraseBrush();
    }
    if (key == 'h') { // if the 'h' key is pressed, draw a house
      houseBrush();
    }
    if (key == 'm') { // if the 'm' key is pressed, draw a mountain
      mountainBrush();
    }
    if (key == 'r') { // if the 'r' key is pressed, delete everything
      reset();
    }
    if (key == 's') { // if the 's' key is pressed, take a screenshot
      saveFrame();
    }
  }
}

/**
  The treeBrush() function is a brush that draws a tree
*/
void treeBrush() {
  fill (135,77,55); 
  stroke(0,0,0);
  triangle(mouseX - 25, mouseY - 25, mouseX, mouseY - 50, mouseX + 25, mouseY - 25);
  triangle(mouseX - 25, mouseY - 50, mouseX, mouseY - 75, mouseX + 25, mouseY - 50);
  triangle(mouseX - 25, mouseY - 75, mouseX, mouseY - 100, mouseX + 25, mouseY - 75);
  fill (99,99,7);
  rect(mouseX-10, mouseY-25,20,30);
}

/**
  The personBrush() function is a brush that draws a person
*/
void personBrush() {
  stroke(0,0,0);
  fill(255, 186, 134);
  ellipse(mouseX,mouseY,60,60);
  fill(0,0,0);
  ellipse(mouseX-15,mouseY,10,10);
  ellipse(mouseX+15,mouseY,10,10);
  fill(255,255,255);
  ellipse(mouseX-15,mouseY,5,5);
  ellipse(mouseX+14,mouseY,5,5);
  fill(0,0,0);
  line(mouseX-15,mouseY+10,mouseX+15,mouseY+10);
}

/**
  The waterBrush() function is a brush that draws water
*/
void waterBrush() {
  fill(0,0,255);
  stroke(0,0,255);
  ellipse(mouseX,mouseY,100,70);
}

/**
  The eraseBrush() function enables the eraser
*/
void eraseBrush() {
  fill(0,206,0);
  stroke(0,206,0);
  ellipse(mouseX,mouseY,60,60);
}

/**
  The houseBrush() function is a brush that draws a house
*/
void houseBrush() {
  fill(214,201,73);
  stroke(0,0,0);
  rect(mouseX,mouseY,60,60);
  fill(255,255,105);
  triangle(mouseX-10,mouseY,mouseX+30,mouseY-32,mouseX+70,mouseY);
  fill(0,0,206);
  rect(mouseX+15,mouseY+15,30,30);
  fill(0,0,0);
  line(mouseX+30,mouseY+15,mouseX+30,mouseY+45);
  line(mouseX+15,mouseY+30,mouseX+45,mouseY+30);
}

/**
  The mountainBrush() function is a brush that draws a mountain
*/
void mountainBrush() {
  fill(70,70,98);
  stroke(0,0,0);
  triangle(mouseX,mouseY,mouseX+40,mouseY+40,mouseX-40,mouseY+40);
  fill(255,255,255);
  triangle(mouseX,mouseY,mouseX+15,mouseY+15,mouseX-15,mouseY+15);
}

/**
  The reset() function resets the drawing
*/
void reset() {
  fill(0,206,0);
  rect(0,0,1920,1080);
}
