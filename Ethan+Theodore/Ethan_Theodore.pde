/**
  Author: Ethan + Theodore
  Description: Draw a forest
*/

/**
  The setup() function runs at the start of the program exactly once.
*/
void setup(){
  size(1550, 900); // Changes the size of the application window to 1550x900
  background(#38448D); // Change the background colour
  noStroke(); // disable drawing the outline
}

/**
  The draw() function runs repeatedly (once per frame) until the application is closed.
*/
void draw() {
  changercouleur();
  screenshot();
  dessine();
  clearcanvas();
}

/**
  The changercouleur() function changes the fill colour when specific key of the keyboard are pressed.
*/
void changercouleur() {
  if (keyPressed){
    if(key=='o' || key == 'O') fill(#E58207);
    if(key=='b' || key == 'B') fill(#0D07E5);
    if(key=='g' || key == 'G') fill(#A7A7AD);
    if(key=='r' || key == 'R') fill(#E80E0E);
    if(key=='p' || key == 'P') fill(#D90EE8);
    if(key=='c' || key == 'C') fill(#0EE8E6);
    if(key=='v' || key == 'V') fill(#17E02F);
    if(key=='y' || key == 'Y') fill(#DCE017);
    if(key=='w' || key == 'W') fill(#FFFFFF);
  }
}

/**
  The dessine() function draws different shapes based on which key you press.
*/
void dessine() {
  if (keyPressed) {
    if (key == '1') arbre();
    else if (key == '2') sapin();
    else if (key == '3') triangle();
    else if (key == '4') cercle();
    else if (key == '5') carre();
  }
}

/**
  The cercle() function draws a circle with the mouse position as its center.
*/
void cercle() {
  ellipse(mouseX, mouseY, 30, 30);
}

/**
  The carre() function draws a square.
*/
void carre() {
  rect(mouseX, mouseY, 30, 30);
}

/**
  The triangle() function draws a triangle.
*/
void triangle() {
  triangle(mouseX, mouseY, mouseX - 16, mouseY + 20, mouseX + 16, mouseY + 20);
}

/**
  The arbre() function draws a tree.
*/
void arbre () {
 fill(#664A7E);
 triangle(mouseX, mouseY, mouseX - 5, mouseY + 30, mouseX + 5, mouseY + 30);
 fill(#3EAF81);
 ellipse(mouseX, mouseY + 5, 30, 10);
}

/**
  The sapin() function draws a different kind of tree.
*/
void sapin () {
 fill(#50397C);
 triangle(mouseX, mouseY, mouseX - 5, mouseY + 30, mouseX + 5, mouseY + 30);
 fill(#099584);
 triangle(mouseX, mouseY, mouseX - 10, mouseY + 12, mouseX + 10, mouseY + 12);
 triangle(mouseX, mouseY - 20, mouseX - 8, mouseY + 5, mouseX + 8, mouseY + 5);
 triangle(mouseX, mouseY - 30, mouseX - 6, mouseY - 5, mouseX + 6, mouseY - 5);
}

/**
  The screenshot() function allows taking screenshots.
*/
void screenshot() {
  if (keyPressed) {
    if (key == 's' || key == 'S') {
    saveFrame();
    }
  }
}

/**
  The clearcanvas() function clears the canvas.
*/
void clearcanvas () {
  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == UP){
        fill(#38448D);
        rect(0, 0, width, height);
      }  
    }
  }
}
