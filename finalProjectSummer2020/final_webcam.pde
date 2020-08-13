// Austin Chang
// 8.12.2020
// DESINV23 / Summer '20
// Professor Shiloh

import processing.serial.*;                                                            // import serial library
import processing.video.*;                                                             // import video library
import gab.opencv.*;                                                                   // import opencv library

Capture video;                                                                         // declare video object
OpenCV opencv;                                                                         // declare opencv object

                                                                                       // below are the instructions before using the application
String instructions = 
  "Instructions:" + 
  "\n To begin press the letter 'o' on your keyboard." + 
  "\n To warp your face press the letters 'w', 'a', 's', or 'd' on your keyboard." +
  "\n Have Fun!";

void setup() {
  fullScreen();                                                                       // set viewing size to the full screen of monitor
                                                                                      // below are the font/size of the instructions
  textFont(createFont("Arial", 45), 15);
  fill(0);
  textAlign(CENTER);
  text(instructions, width/2, height/4.5);

  video = new Capture(this, width, height);                                           // initialize video object
  opencv = new OpenCV(this, width, height);                                           // initialize opencv object
}

void draw() {
  opencv.loadImage(video);                                                            // load image from webcam
  opencv.useColor();                                                                  // colored image from webcam
                                                                                      // below are the image changes based on what key is pressed
  if (keyPressed) {
    if (key == 'o') {
      video.start();
    }
    if (key == 'w') {
      opencv.contrast(1.6);
      opencv.brightness(100);
    }
    if (key == 'a') {
      opencv.flip(OpenCV.HORIZONTAL);
      opencv.blur(100, 100);
    }
    if (key == 's') {
      opencv.flip(OpenCV.VERTICAL);
      opencv.invert();
      opencv.brightness(-100);
    }
    if (key == 'd') {
      opencv.flip(OpenCV.HORIZONTAL);
      //opencv.dilate();
      opencv.erode();
    }
  }
  image(opencv.getOutput(), 0, 0);                                                   // display image after going through openCV functions
}
