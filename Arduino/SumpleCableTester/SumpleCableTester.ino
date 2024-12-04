

// By: Johanna Martinez-Felix 
//Static Cable tester 
//8/12/21
//For Audeze LLC.

//FEMALE CONNECTOR
//combine all leds and analog input voltage reading 
byte voltBias = A4; //assigns the voltage input pin
byte voltRpos = A3;
byte voltLpos = A2;
byte voltLneg = A1;
byte voltRneg = A0;

int readBias; //value received from the voltPin
int readRpos;
int readLpos;
int readLneg;
int readRneg;

float voltageBias; //declare the voltage variable
float voltageRpos;
float voltageLpos;
float voltageLneg;
float voltageRneg;

const int LEDBias = 2;
const int LEDRpos = 3;
const int LEDLpos = 4;
const int LEDLneg = 5;
const int LEDRneg = 6;



void setup() {

  pinMode(voltBias, INPUT); //input variable dc voltage
  pinMode(voltRpos, INPUT); 
  pinMode(voltLpos, INPUT); 
  pinMode(voltLneg, INPUT);
  pinMode(voltRneg, INPUT);
  Serial.begin(9600); //start serial port


  pinMode(LEDBias, OUTPUT);
  pinMode(LEDRpos, OUTPUT);
  pinMode(LEDLpos, OUTPUT);
  pinMode(LEDLneg, OUTPUT);
  pinMode(LEDRneg, OUTPUT);

  

  
}

void loop() {
 
  int readBias = analogRead(voltBias); //read pin A0 value
  int readRpos = analogRead(voltRpos);
  int readLpos = analogRead(voltLpos);
  int readLneg = analogRead(voltLneg);
  int readRneg = analogRead(voltRneg);
  voltageBias = readBias * (5.0 / 1023.0); //calculates real world voltage
  voltageRpos = readRpos * (5.0 / 1023.0);
  voltageLpos = readLpos * (5.0 / 1023.0);
  voltageLneg = readLneg * (5.0 / 1023.0);
  voltageRneg = readRneg * (5.0 / 1023.0);

   

 

  //display values
  Serial.println("Voltage = "); //show “voltage before value on serial monitor
  Serial.println("Bias // Rpos // Lpos // Lneg // Rneg");
  Serial.print(voltageBias ); //show value on serial monitor     
  Serial.print(",     ");

  
  Serial.print(voltageRpos );                                        
  Serial.print(",     ");

  
  Serial.print(voltageLpos );
  Serial.print(",     "); 

  Serial.print(voltageLneg );
  Serial.print(",     ");


  Serial.print(voltageRneg );
  Serial.print(",     ");  

  delay(250); //250ms delay




//checking that all pins are in the correct location
  //Bias Voltage is 1
    if ( (1.08 < voltageBias  ) && ( voltageBias < 1.2) ) {
      
      digitalWrite(LEDBias,HIGH);
      
      delay(250); //250ms delay
      } 
    
      else
      {
     digitalWrite(LEDBias,LOW);
      }   
      
  //Rpos voltage is 2
    if (( 2.1 < voltageRpos  ) && (2.3> voltageRpos ) ) {
       
          
    digitalWrite(LEDRpos,HIGH);
      
      delay(250); //250ms delay
   }  
    else
      {
     digitalWrite(LEDRpos,LOW);
      }   
    
 //Lpos voltage is 3
    if (( 3 < voltageLpos  ) && (3.2 > voltageLpos ) ) {
       
          
    digitalWrite(LEDLpos,HIGH);
      
      delay(250); //250ms delay
   }  
    else
      {
     digitalWrite(LEDLpos,LOW);
      }   

//Lneg voltage is 4
    if (( 3.95 < voltageLneg  ) && (4.15 > voltageLneg ) ) {
       
          
    digitalWrite(LEDLneg,HIGH);
      
      delay(250); //250ms delay
   }  
    else
      {
     digitalWrite(LEDLneg,LOW);
      }    

//Rneg voltage is 5
    if (( 4.9 < voltageRneg  ) && (5.05 > voltageRneg ) ) {
       
          
    digitalWrite(LEDRneg,HIGH);
      
      delay(250); //250ms delay
   }  
    else
      {
     digitalWrite(LEDRneg,LOW);
      }   } 
