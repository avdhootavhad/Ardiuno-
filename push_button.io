int led = 13;
int push = 8;
int count = 0;

void setup()
{
  pinMode(push, INPUT);
  pinMode(led, OUTPUT);
  Serial.begin(9600);

}
void loop ()
{
  int a = digitalRead(push);
  if (a == 1)
  {
    count = count + 1;
    Serial.println("Button pressed:" + String(count) + "times" );
  }
    if (count % 2 == 1) 
    {
      digitalWrite(led, HIGH);
      Serial.println("LED ON");
    }
    else
    {
      digitalWrite(led, LOW);
      Serial.println("LED Off");

    }
    delay(500);
  }
