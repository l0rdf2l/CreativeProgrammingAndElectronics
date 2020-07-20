import processing.sound.*;                                                                                                      // import sound package
SoundFile shot_sound;                                                                                                           // call SoundFile class as shot_sound

float x;                                                                                                                        // x-coordinate of the square
float y;                                                                                                                        // y-coordinate of the square
float s;                                                                                                                        // length of the square

int gameState = 0;                                                                                                              // declare gameState to indicate the different game states
int score = 0;                                                                                                                  // declare score to keep track of the number of heads clicked
float timer;                                                                                                                    // declare counter to keep track of time passed

void setup() {
  fullScreen();                                                                                                                 // set window size as the full screen
  frameRate(144);                                                                                                               // set refresh rate for 144hz (change based on monitor's refresh rate)
  shot_sound = new SoundFile(this, "shot_sound.mp3");                                                                           // upload the sound file                                                       
  head();                                                                                                                       // call the head function
}

void draw() {
  background(255);                                                                                                              // set background color to white
  if (gameState == 0) {                                                                                                         // ACTIONS FOR FIRST GAME STATE (START SCREEN)
    textAlign(CENTER, CENTER);                                                                                                  // align text to the center of the screen
    fill(0);                                                                                                                    // set text color to black
    textSize(45);                                                                                                               // set text size to 45
    text("The goal of this game is to see how many boxes YOU can click in 10 seconds! \n Click to Begin", width/2, height/2);   // psuedo instructions for the game
    if (mousePressed) {                                                                                                         // if - statement when mouse is pressed in the start screen
      gameState = 1;                                                                                                            // change the game state to the game screen
      timer = 0;                                                                                                                // set our timer counter to 0
      score = 0;                                                                                                                // set our score counter to 0
    }
  }
  if (gameState == 1) {                                                                                                         // ACTIONS FOR SECOND GAME STATE (GAME SCREEN)
    textAlign(CENTER, CENTER);                                                                                                  // align text to the center of the screen
    timer = timer + 0.001;                                                                                                      // begin timer increments
    textSize(25);                                                                                                               // set text size to 25
    fill(0);                                                                                                                    // set text color to black
    text("Press Any Key to Restart", width/2, 25);                                                                              // instruction to press any keyboard key to restart the game
    if (timer > 1) {                                                                                                            // if - statement when the timer hits a value
      gameState = 2;                                                                                                            // change the game state to the end screen
    }
    fill(#40E0D0);                                                                                                              // set rectangle color to turquoise
    rect(x, y, s, s);                                                                                                           // calls the rect() function using the float values of x, y, l
    if (mousePressed && x < mouseX && y < mouseY && x + s > mouseX && y + s > mouseY) {                                         // if - statement when the mouse is pressed WITHIN the rectangle boundaries
      head();                                                                                                                   // call the head function to make rectangle
      score += 1;                                                                                                               // increment the score by 1
      shot_sound.play();                                                                                                        // play sound file
    } 
    if (keyPressed) {                                                                                                           // if - statement when the keyboard is pressed
      gameState = 0;                                                                                                            // change the game state to the start screen
    }
  }
  if (gameState == 2) {                                                                                                         // ACTIONS FOR THIRD GAME STATE (END SCREEN)
    textAlign(CENTER, CENTER);                                                                                                  // align text to the center of the screen
    fill(0);                                                                                                                    // set text color to black
    textSize(50);                                                                                                               // set text size to 50
    text(score, width/2, height/2);                                                                                             // show the value of the score variable
    textSize(25);                                                                                                               // set text size to 25
    fill(0);                                                                                                                    // set text color to black
    text("Score:", width/2 - 100, height/2);                                                                                    // "Score:" to indicate the following text is score received
    textSize(25);                                                                                                               // set text size to 25
    fill(0);                                                                                                                    // set text color to black
    text("Press Any Key to Restart", width/2, 25);                                                                              // instruction to press any keyboard key to restart the game
    if (keyPressed) {                                                                                                           // if - statement when the keyboard is pressed
      gameState = 0;                                                                                                            // change the game state to the start screen
      timer = 0;                                                                                                                // reset our timer counter to 0
      score = 0;                                                                                                                // reset our score counter to 0
    }
  }
}

void head() {
  x = random(0, width - s);                                                                                                     // random x-coordinate, width - s so it stays within the window
  y = random(0, height - s);                                                                                                    // random y-coordinate, height - s so it stays within the window
  s = 35;                                                                                                                       // length of the square
}
