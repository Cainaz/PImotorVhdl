const int trigPin = 13;
const int echoPin = 12;
const int led = 7;

void setup() {
  // initialize serial communication:
  Serial.begin(9600);
  pinMode(led, OUTPUT);
}
 
 
 void loop(){
  int x = 0;
  float duration, cm;
  pinMode(trigPin, OUTPUT);
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
   pinMode(echoPin, INPUT);
  duration = pulseIn(echoPin, HIGH);
  cm = duration/29/2;
  delay(1000);
    if (cm>0){
      Serial.println(cm);
    }
    if (cm > 30){
      digitalWrite(led,HIGH);
      x = 1;
    }
    else{
      digitalWrite(led,LOW);
      }
    Serial.println(x);
   }
   

