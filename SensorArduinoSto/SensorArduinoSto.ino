const int trigPin = 13;
const int echoPin = 12;
const int led = 7;
const int stopl = 6;

void setup() {
  // initialize serial communication:
  Serial.begin(9600);
  pinMode(led, OUTPUT);
  pinMode(stopl, OUTPUT);
}
 
 
 void loop(){
  int x,y,z,stopButton = 0;
  float parametro = 30;
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

  //logica de funcionamento
    
  if (cm>0){
      Serial.println(cm);
    }
  if((stopButton == 1) || (cm <= (parametro+1) && cm>=(parametro-1)) ){
    digitalWrite(stopl,HIGH);
    Serial.println(cm);
    y=1;
  }else{
    digitalWrite(stopl, LOW);
    y=0;
  }
    if (cm > (parametro)){
      digitalWrite(led,HIGH);
      x = 1;
    }
    else{
      digitalWrite(led,LOW);
      x=0;
    }
 
    Serial.println(x);
    Serial.println(y);
   }
   

