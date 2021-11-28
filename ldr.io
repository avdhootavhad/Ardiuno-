int ldr = A0;
int led=13;
void setup(){
pinMode(led,OUTPUT);
pinMode(A0,INPUT);
Serial.begin(115200);
}
void loop()
{
  ldr=analogRead(A0);
  Serial.println(ldr);

  if(ldr>=50)
  
    {
      digitalWrite(led,LOW);
    Serial.println("Light OFF");
    }
    else
    {
      digitalWrite(led,HIGH);
      Serial.println("Light ON");
      }
  delay(1000);
  }
