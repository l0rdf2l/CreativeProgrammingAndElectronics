void setup() {
  pinMode(2, INPUT);
  Serial.begin(9600);
}

void loop() {
  if (digitalRead(2) == HIGH) {    // If switch is ON,
    Serial.write(1);               // send 1 to Processing
//    Serial.println("Hello, world!");
  } else {                         // If the switch is not ON,
    Serial.write(0);               // send 0 to Processing
//    Serial.println("COVID-19");
  }
}
