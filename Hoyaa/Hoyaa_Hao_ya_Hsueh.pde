// Drawing Pad by Hoyaa Hao-ya Hsueh
//1: Red
//2: Orange
//3: Yellow
//4: Green
//5: Blue
//6: Indigo
//7: Purple
//8: White
//9: Black
//0: Outline / No outline
//Other buttons (On the keyboard): Delete everything
//Press nothing: (On the mouse): Square
//Left-click (Hold): Circle

boolean stroke_flag = false; // flag to know whether or not the outline stroke should be drawn

/**
  The setup() function runs at the start of the program exactly once.
*/
void setup () {
  size (1000, 1500); // set the window size to 1000x1500
  background(#888888); // create the grey background
  fill(#FFFFFF); // set fill colour to white
}

/**
  The draw() function runs repeatedly (once per frame) until the application is closed.
*/
void draw () {
  if  (mousePressed && (mouseButton == LEFT)) { // if left mouse button is held down, draw an ellipse
    ellipse(mouseX,mouseY,80,80);
  } else { // else draw a rectangle (square)
    rect(mouseX - 40, mouseY - 40, 80, 80);
  }
}

/**
  The keyPressed() function acts whenever a key on the keyboard is pressed.
  Here it is used to change the fill colour.
*/
void keyPressed() {
  // change fill colour depending on which number you press
  if (key == '1'){
    fill(#FF0000);
  } else if (key == '2'){
    fill(#FF7F00);
  } else if (key == '3'){
    fill(#FFFF00);
  } else if (key == '4'){
    fill(#00FF00);
  } else if (key == '5'){
    fill(#0000FF);
  } else if (key == '6'){
    fill(#4B0082);
  } else if (key == '7'){
    fill(#9400D3);
  } else if (key == '8'){
    fill(#FFFFFF);
  } else if (key == '9'){
    fill(#000000);
  } else if (key == '0') { // enable or disable the stroke (outline)
    if (stroke_flag){
      noStroke();
      stroke_flag = false;
    } else {
      stroke(1);
      stroke_flag = true;
    }
  } else { // press anything else on the keyboard to wipe the screen
    background(#888888);
  }
}
