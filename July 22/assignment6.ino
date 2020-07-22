void setup() {
  // put your setup code here, to run once:
  pinMode(8, OUTPUT);
  pinMode(13, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  int switchPosition = digitalRead(A0);
  int sensorValue = analogRead(A1);

//  if (switchPosition == HIGH) {
//    digitalWrite(8, HIGH);
//    delay(1000);
//    digitalWrite(13, LOW);
//    delay(1000);
//  } else  {
//    digitalWrite(8, LOW);
//    delay(1000);
//    digitalWrite(13, HIGH);
//    delay(1000);
//  }

  if (sensorValue > 900) {
    digitalWrite(8, HIGH);
    delay(1000);
    digitalWrite(8, LOW);
    delay(1000);
  }

  Serial.println(sensorValue);
  delay(1);
}
