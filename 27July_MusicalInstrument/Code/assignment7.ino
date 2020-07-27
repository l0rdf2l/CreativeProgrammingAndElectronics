#include "pitches.h"
#include <Servo.h>
Servo myservo;

int melody[] = {                                                              // array of the notes in the melody
  NOTE_FS4, NOTE_E4, NOTE_D4, NOTE_CS4, NOTE_B3, NOTE_A3, NOTE_B3, NOTE_CS4,
  NOTE_FS4, NOTE_E4, NOTE_D4, NOTE_CS4, NOTE_B3, NOTE_A3, NOTE_B3, NOTE_CS4,
  NOTE_D4, NOTE_CS4, NOTE_B3, NOTE_A3, NOTE_G3, NOTE_FS3, NOTE_G3, NOTE_A3,
  NOTE_D4, NOTE_FS4, NOTE_G4, NOTE_A4, NOTE_FS4, NOTE_G4, NOTE_A4, NOTE_B3,
  NOTE_CS4, NOTE_D4, NOTE_E4, NOTE_FS4, NOTE_G4, NOTE_FS4, NOTE_D4, NOTE_E4,
  NOTE_FS4, NOTE_FS3, NOTE_G3, NOTE_A3, NOTE_G3, NOTE_FS3, NOTE_G3, NOTE_A3,
  NOTE_G3, NOTE_B3, NOTE_A3, NOTE_G3, NOTE_FS3, NOTE_E3, NOTE_FS3, NOTE_D3,
  NOTE_E3, NOTE_FS3, NOTE_G3, NOTE_A3, NOTE_B3, NOTE_G3, NOTE_B3, NOTE_A3,
  NOTE_B3, NOTE_CS4, NOTE_D4, NOTE_A3, NOTE_B3, NOTE_CS4, NOTE_D4, NOTE_E4,
  NOTE_FS4, NOTE_G4, NOTE_A4,
};

int noteDurations[] = {                                                       // array of the note durations: 2 = whole note, 4 = quarter note, 8 = eighth note
  2, 2, 2, 2, 2, 2, 2, 2,
  2, 2, 2, 2, 2, 2, 2, 2,
  2, 2, 2, 2, 2, 2, 2, 2,
  4, 8, 8, 4, 8, 8, 4, 8,
  8, 8, 8, 8, 8, 4, 8, 8,
  4, 8, 8, 8, 8, 8, 8, 2,
  4, 8, 8, 4, 8, 8, 4, 8,
  8, 8, 8, 8, 8, 4, 8, 8,
  4, 8, 8, 8, 8, 8, 8, 8,
  8, 8, 2,
};

void setup() {
  myservo.attach(4);                                                          // servos is attatched to digital pin 4
}

void canonInD() {                                                             // Canon in D
  for (int thisNote = 0; thisNote < 75; thisNote++) {                         // for loop that iterate over the notes of the melody to Canon in D
    int noteDuration = 1000 / noteDurations[thisNote];                        // calculates the note duration
    tone(8, melody[thisNote], noteDuration);                                  // generates the soundwave given the parameters
    int pauseBetweenNotes = noteDuration * 1.30;                              // calculates minimum delay time
    delay(pauseBetweenNotes);                                                 // a minimum delay time to make the notes distinguishable
  }
}

void loop() {
  if (digitalRead(12)) {                                                      // if the switch (red) is pressed
    canonInD();                                                               // play Canon in D
  }
  if (digitalRead(5)) {                                                       // if the switch (green) is pressed
    myservo.write(130);                                                       // rotate to 130 degrees
  } else {                                                                    // else ...
    myservo.write(50);                                                        // rotate to 50 degrees
  }
}
