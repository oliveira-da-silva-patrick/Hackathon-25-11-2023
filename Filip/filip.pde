/**
  Author: Filip
  Description: Draws circles in circles
*/

/**
  The setup() function runs at the start of the program exactly once.
*/
void setup() {
  size (480, 480);
  fill(#03ECFF);
}

/**
  The draw() function runs repeatedly (once per frame) until the application is closed.
*/
void draw() {
  circleBrush();
} 

/**
  The circleBrush() function is a brush that draws circles.
*/
void circleBrush() {
  ellipse(mouseX,mouseY,100,100);
  ellipse(mouseX,mouseY,90,90);
  ellipse(mouseX,mouseY,80,80);
  ellipse(mouseX,mouseY,80,80);
  ellipse(mouseX,mouseY,70,70);
  ellipse(mouseX,mouseY,60,60);
  ellipse(mouseX,mouseY,50,50);
  ellipse(mouseX,mouseY,40,40);
  ellipse(mouseX,mouseY,30,30);
  ellipse(mouseX,mouseY,20,20);
  ellipse(mouseX,mouseY,10,10);
  ellipse(mouseX,mouseY,1,1);
}

/**
  The keyPressed() function acts whenever a key on the keyboard is pressed.
  Here it is used to change the fill colour.
*/
void keyPressed() {
  if (key == '1'){
    fill(#FF0000);
  }
  else if (key == '2'){
    fill(#FF9100);
  }
  else if (key == '3'){
    fill(#FFF700);
  }
  else if (key == '4'){
    fill(#00FF57);
  }
  else if (key == '5'){
    fill(#03ECFF);
  }
}
