int ir=0;
int irv;
int led =13;
int count;
void setup() {
 pinMode(ir,INPUT);
 pinMode(led,OUTPUT);
 Serial.begin(9600);
}

void loop() 
{
  int irv;
  irv=digitalRead(ir);
  if(irv==0)
  {
    digitalWrite(led,HIGH);
    count = count+1;
   Serial.print("No of pepople :");
   Serial.println(count);
    }
else
{
  digitalWrite(led,LOW);
  }
  delay(500);
}
