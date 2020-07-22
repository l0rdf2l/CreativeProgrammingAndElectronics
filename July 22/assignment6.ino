void setup() {
  // put your setup code here, to run once:
  pinMode(8, OUTPUT);                                  // initialize digital pin 8 as an output
  pinMode(13, OUTPUT);                                 // initialize digital pin 13 as an output
  Serial.begin(9600);                                  // initialize serial communication at 9600 bits per second
}

void loop() {
  // put your main code here, to run repeatedly:
  int switchPosition = digitalRead(A0);                // read the switchPosition on analog pin 0
  int sensorValue = analogRead(A1);                    // read the sensorValue on analog pin 1

  if (switchPosition == HIGH) {
    digitalWrite(8, HIGH);                             // turn the LED on by making the voltage HIGH
    delay(1000);                                       // wait for a second
    digitalWrite(13, LOW);                             // turn the LED off by making the voltage LOW
    delay(1000);                                       // wait for a second
  } else  {
    digitalWrite(8, LOW);                              // turn the LED off by making the voltage LOW
    delay(1000);                                       // wait for a second
    digitalWrite(13, HIGH);                            // turn the LED on by making the voltage HIGH
    delay(1000);                                       // wait for a second
  }

  if (sensorValue > 900) {
    digitalWrite(8, HIGH);                             // turn the LED on by making the voltage HIGH
    delay(1000);                                       // wait for a second
    digitalWrite(8, LOW);                              // turn the LED off by making the voltage LOW
    delay(1000);                                       // wait for a second
  }

  Serial.println(sensorValue);                         // print out sensorValue
  delay(1);                                            // slight delay between each sensorValue
}
