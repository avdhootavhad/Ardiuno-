int ldr=A0;
int led=13;
#include <Stepper.h>
const int stepsPerRevolution = 200;
Stepper myStepper(stepsPerRevolution, 8, 9 , 10, 11);
void setup(){
  myStepper.setSpeed(60);
pinMode(led,OUTPUT);
pinMode(A0,INPUT);
Serial.begin(9600);
}
void loop()
{
  ldr=analogRead(A0);
  Serial.println(ldr);

  if(ldr>=150)
  
    {
      digitalWrite(led,HIGH);
    Serial.println("Light ON,Motor is start");
    myStepper.step(stepsPerRevolution);
    delay(100);
   
    
    }
    else
    {
      digitalWrite(led,LOW);
      Serial.println("Light Off");
      }
  delay(1000);
  }
