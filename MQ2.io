int smokeA0=8;
int value;
int buzzer = 10;
void setup ()
{
  pinMode(smokeA0,INPUT);
  pinMode(buzzer,OUTPUT);
  Serial.begin(9600);
 
}
void loop ()
{
   value=digitalRead(smokeA0);
Serial.print("value:");
Serial.print(value);
Serial.println();
delay(2000);
}
