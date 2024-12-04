
const int LEDBias = 2;
const int LEDRpos = 3;
const int LEDLpos = 4;
const int LEDLneg = 5;
const int LEDRneg = 6;


void setup() {




  pinMode(LEDBias, OUTPUT);
  pinMode(LEDRpos, OUTPUT);
  pinMode(LEDLpos, OUTPUT);
  pinMode(LEDLneg, OUTPUT);
  pinMode(LEDRneg, OUTPUT);

  

  
}

void loop() {

digitalWrite(LEDBias,HIGH);

digitalWrite(LEDRpos,HIGH);

digitalWrite(LEDLpos,HIGH);

digitalWrite(LEDLneg,HIGH);

digitalWrite(LEDRneg,HIGH);

}
