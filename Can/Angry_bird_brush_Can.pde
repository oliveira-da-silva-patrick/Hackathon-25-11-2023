/**
  Author: Can
  Description: Draws Angry Birds
*/

/**
  The setup() function runs at the start of the program exactly once.
*/
void setup () {
  fill(#00CCFF);
  rect(0,0,1920,1080);
  size(1920,1080);
}

/**
  The draw() function runs repeatedly (once per frame) until the application is closed.
*/
void draw () {
  bird1();
  bird2();
  bird3();
}

/**
  The bird1() function draws the bird on the left.
*/
void bird1() {
  // BODY
  if (mousePressed) {
    fill(#FF99FF);
  } else {
    fill(#00FF00);
  }
  ellipse(mouseX-300,mouseY,200,200);
  
  // EARS
  ellipse(mouseX-340,mouseY-90,20,20);
  ellipse(mouseX-260,mouseY-90,20,20);
      
      
  // NOSE
  if (mousePressed) {
    fill(#FFFFFF);
  } else {
    fill(#000000);
  }
  ellipse(mouseX-330,mouseY+20,50,50);
  ellipse(mouseX-270,mouseY+20,50,50);
  
  // EYES
  fill(#FFFFFF);
  ellipse(mouseX-330,mouseY-50,20,20);
  ellipse(mouseX-270,mouseY-50,20,20);
}

/**
  The bird2() function draws the bird on the middle.
*/
void bird2() {
  // BODY
  if (mousePressed) {
    fill(#FFFF00);
  } else {
    fill(#FF0000);
  }
   ellipse(mouseX,mouseY,200,200);
   
  // BECK
  if (mousePressed) {
    fill(#FFFF00);
  } else {
    fill(#FFFFFF);
  }
   triangle(mouseX+100,mouseY-20,mouseX+130,mouseY-25,mouseX+100,mouseY+0);
   triangle(mouseX+100,mouseY+0,mouseX+130,mouseY+25,mouseX+100,mouseY+20);
   
  // EYES
    if (mousePressed) {
      fill(#000000);
    } else {
      fill(#000000);
    }
   ellipse(mouseX+20,mouseY-20,30,30);
   ellipse(mouseX+260,mouseY+20,25,25);
   
   // EYEBROW
   line(mouseX,mouseY-50,mouseX+30,mouseY-35);
}

/**
  The bird3() function draws the bird on the right.
*/
void bird3() {
  // BODY
  if (mousePressed) {
    fill(#0000FF);
  } else {
    fill(#FFFF00);
  }
  triangle(mouseX+200,mouseY+100,mouseX+400,mouseY+100,mouseX+300,mouseY-100);
 
  // BECK
  if (mousePressed) {
    fill(#FFFF00);
  } else {
    fill(#FF6600);
  }
  triangle(mouseX+330,mouseY+50,mouseX+270,mouseY+50,mouseX+300,mouseY+30);
  triangle(mouseX+330,mouseY+55,mouseX+270,mouseY+55,mouseX+300,mouseY+75);
  
  // EYES
  if (mousePressed) {
    fill(#000000);
  } else {
    fill(#000000);
  }
  ellipse(mouseX+260,mouseY+20,25,25);
  ellipse(mouseX+340,mouseY+20,25,25);
  
  // EYEBROW
  line(mouseX+320,mouseY,mouseX+345,mouseY);
  line(mouseX+255,mouseY,mouseX+280,mouseY);
}

 
  
