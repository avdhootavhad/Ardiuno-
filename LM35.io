 int val;
int temPin=A0;
void setup()
{ 
pinMode(temPin,INPUT);
Serial.begin(9600);
}

void loop() {

  val=analogRead(temPin);
 
  float MV = (val/1024.0*5000);
  float cel= MV/10;
  Serial.print("TEMPRATURE=");
  Serial.print(cel);
 Serial.print("*c") ;
  Serial.println();
  delay(1000);
}
