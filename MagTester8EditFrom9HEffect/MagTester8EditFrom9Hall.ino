// this software is for the Audeze 8 magnet headphone planar magnetic array
#include "TimerOne.h"

int red[]  = {0, 2,  4,  6,  2,  4,  6,  2,  4,  6 }; // digital pin #s corresponding to colors
int grn[]  = {0, 3,  5,  7,  3,  5,  7,  3,  5,  7 }; // we start our count at one, not zero
int leds[20]; // 9 LEDs 0 = off 1 = red 2 = grn       // for storing LED colors which are multiplexed and written in timer interrupt

int hall[20];    // for storing analog values from Hall effect sensors
int n, i = 0;
#define MID 500  // center of A/D range corresponding to no magnetic field

// barely can move a mm before failing

int minHi = 700;  // modfied 11/9/2014 to require stronger field
int maxLo = 260;  // modfied 11/9/2014 to require stronger field

//#define ASWITCHSEL 0
int fault[20]; // 0 = Polarity Good, Strength Good  1 = Polarity Good, Strength Weak, 2 = Polarity Wrong, Strength Good, 3 = Polarity Wrong, Strength Weak
void setup()
{
  pinMode(10, INPUT_PULLUP);    // polarity switch pin
  pinMode( 8, OUTPUT);          // LEDs 1,2,3
  pinMode( 9, OUTPUT);          // LEDs 4,5,6
  pinMode(11, OUTPUT);          // LEDs 7,8,9
  //pinMode( ASWITCHSEL, OUTPUT); // Analog Switch Channel select
  for(n = 1; n <= 8; n++)       // Set these pins as outputs //9
  {
    pinMode(red[n],  OUTPUT);
    pinMode(grn[n],  OUTPUT);    
  }

// begin test A switch
  while(0)
  {
    /*digitalWrite(0, 1);
    delay(3000);
    digitalWrite(0,0);
    delay(3000);
    delay(10);
    digitalWrite(11,1);
    delay(10);
    digitalWrite(11,0); */
    
  }
// end test A switch
  Timer1.initialize(5000);           // initialize timer1, and set a xxxx second period
  Timer1.attachInterrupt(callback);  // attaches callback() as a timer overflow interrupt
  //Serial.begin(9600);
}

void callback()
{ // this function lights three out of nine LEDs each time it is called
  static int led_group = 1; // start off in group one
  static int m;
  if ( led_group == 1 ) 
  {
    digitalWrite(  8, 1); // LEDs 1, 2, 3
    digitalWrite(  9, 0);
    digitalWrite( 11, 0);
    for( m = 1; m <= 3; m++ )
    {
      if (leds[m] == 0) {  digitalWrite( grn[m],  LOW);  digitalWrite(red[m],  LOW); }
      if (leds[m] == 1) {  digitalWrite( grn[m], HIGH);  digitalWrite(red[m],  LOW); }
      if (leds[m] == 2) {  digitalWrite( grn[m],  LOW);  digitalWrite(red[m], HIGH); }
    }
    led_group = 2;
    return;
  }
  if ( led_group == 2 )
  {
    digitalWrite(  8, 0);
    digitalWrite(  9, 1); // LEDs 4, 5, 6
    digitalWrite( 11, 0);
    for( m = 4; m <= 6; m++ )
    {
      if (leds[m] == 0) {  digitalWrite( grn[m],  LOW);  digitalWrite(red[m],  LOW); }
      if (leds[m] == 1) {  digitalWrite( grn[m], HIGH);  digitalWrite(red[m],  LOW); }
      if (leds[m] == 2) {  digitalWrite( grn[m],  LOW);  digitalWrite(red[m], HIGH); }
    }
    led_group = 3;
    return;
  }
  if ( led_group == 3 )
  {
    digitalWrite(  8, 0);
    digitalWrite(  9, 0);
    digitalWrite( 11, 1); // LEDs 7, 8, 9
    for( m = 7; m <= 8; m++ ) //9
    {
      if (leds[m] == 0) {  digitalWrite( grn[m],  LOW);  digitalWrite(red[m],  LOW); }
      if (leds[m] == 1) {  digitalWrite( grn[m], HIGH);  digitalWrite(red[m],  LOW); }
      if (leds[m] == 2) {  digitalWrite( grn[m],  LOW);  digitalWrite(red[m], HIGH); }
    }
    led_group = 1;
    return;
  }  
}


// the loop runs forever:
void loop() // test for all magnets same orientation
{




  
  // read and store hall sensor a/d values
  hall[1] = analogRead(A7);
  hall[2] = analogRead(A6);  
  hall[3] = analogRead(A5);
  hall[4] = analogRead(A4);  
  hall[5] = analogRead(A3);
  hall[6] = analogRead(A2); 
  hall[7] = analogRead(A1);
  //digitalWrite(ASWITCHSEL,0); // A0 analog channel is muxed between two Hall sensors
  //delayMicroseconds(50);
  hall[8] = analogRead(A0);
  //digitalWrite(ASWITCHSEL,1);
  //delayMicroseconds(50);
  //hall[9] = analogRead(A0);


  if( HIGH == digitalRead(10)) // read the polarity switch and use appropriate direction
  {
    for(n = 1; n <=8; n++) // TEST ALL //9
    {
      if ( hall[n] >= minHi) { fault[n] = 0; }      // Polarity good, strength good
      if ( ( hall[n] > MID) && ( hall[n] <  minHi)) // Polarity good but weak
      {
        { fault[n] = 1; }
      }
      if ( hall[n] < maxLo) { fault[n] = 2; }         // Polarity wrong strength good
      if ( ( hall[n] <= MID) && ( hall[n] >  maxLo))  // Polarity wrong strength weak
      {
        { fault[n] = 3; }
      }
    }
  }

  if( LOW == digitalRead(10))
  {
    for(n = 1; n <=8; n++) // TEST ALL //9
    {
      if ( hall[n] <= maxLo) { fault[n] = 0; }        // Polarity good, strength good
      if ( ( hall[n] <= MID) && ( hall[n] >  maxLo))  // Polarity good but weak
      {
        { fault[n] = 1; }
      }
      if ( hall[n] >= minHi) { fault[n] = 2; }         // Polarity wrong strength good
      if ( ( hall[n] >= MID) && ( hall[n] <  minHi))  //  Polarity wrong strength weak
      {
        { fault[n] = 3; }
      }
    }
  }

  delay(80);
  for(n = 1; n <= 8; n++)//9
  {
    if ( fault[n] == 0 ) leds[n] = 2; // good so green
    if ( fault[n] == 1 ) leds[n] = 2; // good but weak so green for now
    if ( fault[n] == 2 ) leds[n] = 1; // polarity wrong good strength so red
    if ( fault[n] == 3 ) leds[n] = 1; // polarity wrong strength weak so red
  }
  delay(80);    
  for(n = 1; n <= 8; n++)//9
  {
    if ( fault[n] == 1 ) leds[n] = 0; // blink off
    if ( fault[n] == 3 ) leds[n] = 0; // blink off
  }
}
