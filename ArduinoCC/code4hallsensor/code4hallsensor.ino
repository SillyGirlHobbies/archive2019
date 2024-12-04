byte inputPin[] = {A0, A1, A2, A3, A4}; // Pins on which the hall-sensors are connected

void setup() {
  Serial.begin(9600);
  for (int i = 0; i < 5; i++) {
    pinMode(inputPin[i], INPUT); //initialize all pins as input
  }
}

void loop() {
  for (int i = 0; i < 5; i++) {
    Serial.print(analogRead(inputPin[i]));
    Serial.print("t         ");
  }
  Serial.println("");
}
