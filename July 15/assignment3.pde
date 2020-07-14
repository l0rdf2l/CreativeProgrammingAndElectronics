float ballX = 250;
float ballY = 250;

void setup() {
  size(500, 500);                    // viewing window dimensions
}

void draw() { 
  background(255);                   // white background
  fill(#D3D3D3);                     // select pinball color
  ellipse(ballX, ballY, 20, 20);     // circle, representing a pinball
  fill(#CAA472);                     // select wall color
  rect(0, 0, 500, 20);               // rect, representing the wall
  fill(0);                           // select paddle color
  rect(mouseX - 50, 475, 100, 10);   // rect, representing paddle. 
  
  if (mousePressed) {
    ballX += 5;
    ballY += 5;
  }
}
