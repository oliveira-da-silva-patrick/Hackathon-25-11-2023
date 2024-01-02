/**
  Author: Anbu
  Description: Draw geometry dash character
*/

/**
  The setup() function runs at the start of the program exactly once.
*/
void setup() {
  size(1500, 1500); // Changes the size of the application window to 1500x1500
  resetCanvas();
}

/**
  The resetCanvas() function initialises the background.
*/
void resetCanvas() {
  stroke(0, 130, 255); 
  fill(0, 130, 255); 
  rect(0, 0, 1500, 1500);
  stroke(0, 100, 230);
  fill(0, 100, 250);
  rect(10, 10, 300, 300);
  rect(320, 10, 95, 95);
  rect(425, 10, 95, 95);
  rect(320, 115, 199, 195);
  rect(530, 10, 140, 140);
  rect(680, 10, 400, 400);
  rect(530, 160, 140, 150);
  rect(1090, 10, 200, 200);
  rect(1300, 10, 190, 200);
  rect(1090, 220, 400, 400);
  rect(880, 420, 200, 200);
  rect(480, 420, 390, 390);
  rect(580, 320, 90, 90);
  rect(480, 320, 90, 90);
  rect(10, 320, 460, 460);
  rect(10, 790, 170, 170);
  rect(190, 790, 170, 170);
  rect(370, 790, 100, 100);
  rect(370, 900, 60, 60);
  rect(440, 900, 30, 27.5);
  rect(440, 932.5, 30, 27.5);
  rect(480, 820, 140, 140);
  rect(630, 820, 140, 140);
  rect(780, 820, 90, 90);
  rect(780, 920, 40, 40);
  rect(830, 920, 40, 40);
  rect(880, 630, 330, 330);
  rect(1220, 630, 270, 270);
  rect(1220, 910, 50, 50);
  rect(1280, 910, 50, 50);
  rect(1340, 910, 50, 50);
  rect(1400, 910, 50, 50);
  rect(1460, 910, 30, 30);
  rect(1460, 947, 12.5, 12.5);
  rect(1478, 947, 12.5, 12.5); 
}

/**
  The drawCharacter() function draws the geometry dash character when you hold the spacebar.
*/
void drawCharacter() {
  if (key == ' ') {
      stroke(0, 200, 255); 
      fill(0, 200, 255);
      rect(mouseX - 51.75, mouseY - 51.75, 103.5, 103.5); // background
      stroke(0);
      fill(255, 150, 0);
      rect(mouseX - 50, mouseY - 50, 100, 100); // foreground
      stroke(#FFB44B);
      fill(#FFB44B);
      triangle(mouseX - 49, mouseY - 49, mouseX - 49, mouseY, mouseX, mouseY - 49);
      stroke(205, 100, 0);
      fill(230, 125, 0);
      triangle(mouseX + 49.5, mouseY + 49.5, mouseX + 49.5, mouseY, mouseX, mouseY + 49.5);
      stroke(0);
      fill(0, 200, 255);
      rect(mouseX - 35, mouseY + 3, 70, 15); // the mouth
  
      if (mousePressed) { // if mouse button is pressed, close eyes
        line(mouseX - 23, mouseY - 15, mouseX - 8, mouseY - 15);
        line(mouseX + 10 , mouseY - 15, mouseX + 25, mouseY - 15);
      } else { // else open eyes
        rect(mouseX - 25, mouseY -25, 15, 15);
        rect(mouseX + 13, mouseY -25, 15, 15);
      }
   }
}

void draw() {
  if (keyPressed) {
    drawCharacter();
 
    if (key == 'e' || key == 'E') {
      resetCanvas();
   }
  }
}
