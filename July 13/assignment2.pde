int circles = 100;                                    // variable that is used later

void setup() {
  size(1000, 575);                                    // dimensions of the display window
  background(255);                                    // white background color
  noFill();
  blue();                                             // call blue function
  black();                                            // call black function
  red();                                              // call red function
  yellow();                                           // call yellow function
  green();                                            // call green function
}

void blue() {
  pushMatrix();                                       // prepares upcoming translation in the  mastrix stack
  translate(300, 200);                                // translate from origin point of (0, 0)
  stroke(#0085C7);                                    // specify blue color
  //for (int i = 0; i < circles * 1.5; i++) {
  //  ellipse(0, 0, i++, i++);
  //}
  for (int i = 0; i < circles; i++) {                 // begin for loops to create  circles based on the "circles" var
    ellipse(90, 0, 35, 35);                           // starting point for the circle ring
    rotate(radians(360/float(circles)));              // the circle rotation the ellipse makes
  }
  popMatrix();                                        // resets the translation in the matrix stack
}

void black() {
  pushMatrix();                                       // prepares upcoming translation in the  mastrix stack
  translate(500, 200);                                // translate from origin point of (0, 0)
  stroke(#000000);                                    // specify black color
  for (int i = 0; i < circles; i++) {                 // begin for loops to create  circles based on the "circles" var
    ellipse(90, 0, 35, 35);                           // starting point for the circle ring
    rotate(radians(360/float(circles)));              // the circle rotation the ellipse makes
  }
  popMatrix();                                        // resets the translation in the matrix stack
}

void red() {
  pushMatrix();                                       // prepares upcoming translation in the  mastrix stack
  translate(700, 200);                                // translate from origin point of (0, 0)
  stroke(#DF0024);                                    // specify red color
  for (int i = 0; i < circles; i++) {                 // begin for loops to create  circles based on the "circles" var
    ellipse(90, 0, 35, 35);                           // starting point for the circle ring
    rotate(radians(360/float(circles)));              // the circle rotation the ellipse makes
  }
  popMatrix();                                        // resets the translation in the matrix stack
}

void yellow() {
  pushMatrix();                                       // prepares upcoming translation in the  mastrix stack
  translate(400, 375);                                // translate from origin point of (0, 0)
  stroke(#F4C300);                                    // specify yellow color
  for (int i = 0; i < circles; i++) {                 // begin for loops to create  circles based on the "circles" var
    ellipse(90, 0, 35, 35);                           // starting point for the circle ring
    rotate(radians(360/float(circles)));              // the circle rotation the ellipse makes
  }
  popMatrix();                                        // resets the translation in the matrix stack
}

void green() {
  pushMatrix();                                       // prepares upcoming translation in the  mastrix stack
  translate(600, 375);                                // translate from origin point of (0, 0)
  stroke(#009F3D);                                    // specify green color
  for (int i = 0; i < circles; i++) {                 // begin for loops to create  circles based on the "circles" var
    ellipse(90, 0, 35, 35);                           // starting point for the circle ring
    rotate(radians(360/float(circles)));              // the circle rotation the ellipse makes
  }
  popMatrix();                                        // resets the translation in the matrix stack
}
