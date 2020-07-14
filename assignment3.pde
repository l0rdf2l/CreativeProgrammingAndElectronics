void setup() {
  size(500, 500);                    // viewing window dimensions
}

void draw() { 
  background(255);                   // white background
  fill(#D3D3D3);                     // select pinball color
  ellipse(250, 250, 20, 20);         // circle, representing a pinball
  fill(#CAA472);                     // select wall color
  rect(0, 0, 20, 500);               // rect, representing the wall
  fill(0);                           // select paddle color
  rect(475, mouseY - 50, 10, 100);   // rect, representing paddle. 
}
