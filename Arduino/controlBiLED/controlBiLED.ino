int bi1 = 2;
int bi2 = 3;

void setup() {

pinMode(bi1, OUTPUT);
pinMode(bi2, OUTPUT);

}

void loop() {

digitalWrite(bi1,  HIGH);
digitalWrite(bi2,  LOW);
delay (2000);
digitalWrite(bi1,  LOW);
digitalWrite(bi2,  HIGH);
delay (2000);
}
