/** //<>//
  Author: Victor + Louis + Luka
  Description: Draw ghosts from the Internet
*/


PImage ghost1; // image of ghost 1
PImage ghost2; // image of ghost 2
boolean wasKeyPressed = false; // flag to know which ghost 

/**
  The setup() function runs at the start of the program exactly once.
*/
void setup () {
  size (1920, 1080); // Changes the size of the application window to 1920x1080
  
  // load the images
  ghost1 = loadImage("https://images.vexels.com/media/users/3/143914/isolated/lists/4845c65e036c40f674eba5f1501df4ab-white-ghost-silhouette-13.png", "png");
  ghost2 = loadImage("https://ksr-ugc.imgix.net/assets/038/544/390/278647bd0c5c870580df4e082c744b36_original.png?ixlib=rb-4.1.0&w=680&fit=max&v=1662759615&gif-q=50&lossless=true&s=e977aa10aec8a170e598527afcb6a186", "png");
}

/**
  The draw() function runs repeatedly (once per frame) until the application is closed.
*/
void draw() {
  if (mousePressed) { // if mouse button is pressed draw ghost 2 else draw ghost 1
    ghost2();
  } else {
    ghost1();
  }
}

/**
  The ghost1() function is a brush we created to draw ghost1.
*/
void ghost1() {
  image(ghost1, mouseX - ghost1.width / 2, mouseY - ghost1.height / 2);
}

/**
  The ghost2() function is a brush we created to draw ghost2.
*/
void ghost2(){
  image(ghost2, mouseX - ghost2.width / 2, mouseY - ghost2.height / 2);
}

/**
  The keypressed() function is executed every time a key on the keyboard is pressed.
  Here the keypressed allows changing the background colour everytime a key on the keyboards is pressed.
*/
void keyPressed() {
  if (wasKeyPressed) {
    background(255);
    wasKeyPressed = false;
  } else {
    background(0);
    wasKeyPressed = true;
  }
 }
