//proyecto tics


char buffer[67];


byte Pino04 = 4;
byte Pino05 = 5;
byte Pino06 = 6;
byte Pino07 = 7;
byte Pino08 = 8;
byte Pino09 = 9;
byte Pino10 = 10;
byte Pino11 = 11;


void setup(){
  Serial.begin(9600);
  Serial.flush();
  
  pinMode(Pino04, OUTPUT);
  pinMode(Pino05, OUTPUT);
  pinMode(Pino06, OUTPUT);
  pinMode(Pino07, OUTPUT);
  pinMode(Pino08, OUTPUT);
  pinMode(Pino09, OUTPUT);
  pinMode(Pino10, OUTPUT);
  pinMode(Pino11, OUTPUT);
  
  
}
void loop(){
  if (Serial.available()>0){
    int index=0;
    delay(100);//deixe o buffer encher
    int numChar = Serial.available();
    if(numChar>65){
      numChar=65;
    }
    while(numChar--){
      buffer[index++] = Serial.read();
    }
    splitString(buffer);
  }
}
void splitString(char* data){
  Serial.print("Dados inseridos: ");
  Serial.println(data);
  char* parameter;
  parameter= strtok (data, " ,");
  while(parameter != NULL){
    setLED(parameter);
    parameter = strtok (NULL, " ,");
  }
  //Limpa o texto e os buffers seriais
  for (int x=0; x<66; x++){
    buffer[x]='\0';
  }
  Serial.flush();
}
void setLED(char* data){
    
  if ((data[0] =='c') || (data[0] == 'C')){
    int Ans = strtol(data+1, NULL, 10);
    Ans = constrain(Ans,0,1);
    digitalWrite(Pino04, Ans);
    Serial.print("Pino04 esta em: ");
    Serial.println(Ans);
  }
  if ((data[0] =='d') || (data[0] == 'D')){
    int Ans = strtol(data+1, NULL, 10);
    Ans = constrain(Ans,0,255);
    analogWrite(Pino05, Ans);
    Serial.print("Pino05 esta em: ");
    Serial.println(Ans);
  }
  if ((data[0] =='e') || (data[0] == 'E')){
    int Ans = strtol(data+1, NULL, 10);
    Ans = constrain(Ans,0,255);
    analogWrite(Pino06, Ans);
    Serial.print("Pino06 esta em: ");
    Serial.println(Ans);
  }
  if ((data[0] =='f') || (data[0] == 'F')){
    int Ans = strtol(data+1, NULL, 10);
    Ans = constrain(Ans,0,1);
    digitalWrite(Pino07, Ans);
    Serial.print("Pino07 esta em: ");
    Serial.println(Ans);
  }
  if ((data[0] =='g') || (data[0] == 'G')){
    int Ans = strtol(data+1, NULL, 10);
    Ans = constrain(Ans,0,1);
    digitalWrite(Pino08, Ans);
    Serial.print("Pino08 esta em: ");
    Serial.println(Ans);
  }
  if ((data[0] =='h') || (data[0] == 'H')){
    int Ans = strtol(data+1, NULL, 10);
    Ans = constrain(Ans,0,255);
    analogWrite(Pino09, Ans);
    Serial.print("Pino09 esta em: ");
    Serial.println(Ans);
  }
  if ((data[0] =='i') || (data[0] == 'I')){
    int Ans = strtol(data+1, NULL, 10);
    Ans = constrain(Ans,0,255);
    analogWrite(Pino10, Ans);
    Serial.print("Pino10 esta em: ");
    Serial.println(Ans);
  }
  if ((data[0] =='j') || (data[0] == 'J')){
    int Ans = strtol(data+1, NULL, 10);
    Ans = constrain(Ans,0,255);
    analogWrite(Pino11, Ans);
    Serial.print("Pino11 esta em: ");
    Serial.println(Ans);
  }
  
}
