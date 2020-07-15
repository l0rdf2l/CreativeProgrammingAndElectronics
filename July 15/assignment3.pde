float x;                                                                                    // x-coordinate of the square
float y;                                                                                    // y-coordinate of the square
float s;                                                                                    // length of the square

void setup() {
  size(600, 600);                                                                           // sets window dimensions
  head();                                                                                   // call the head function
}

void draw() {
  size(600, 600);
  background(255);                                                                          // sets white background
  fill(#40E0D0);                                                                            // sets color to turquoise
  rect(x, y, s, s);                                                                         // calls the rect() function using the float values of x, y, l
  line(mouseX - 15, mouseY, mouseX + 15, mouseY);                                           // horizontal line for crosshair
  line(mouseX, mouseY - 15, mouseX, mouseY + 15);                                           // vertical line for crosshair
  if (mousePressed && x < mouseX && y < mouseY && x + s > mouseX && y + s > mouseY) {       // if statement that is called when the mouse is pressed WITHIN the rectangle boundaries
    head();                                                                                 // call the head function if boolean = TRUE                                                                                                                                                           
  }
}

void head() {
  x = random(0, width - s);                                                                 // random x-coordinate, width - s so it stays within the window
  y = random(0, height - s);                                                                // random y-coordinate, height - s so it stays within the window
  s = 35;                                                                                   // length of the square
}
