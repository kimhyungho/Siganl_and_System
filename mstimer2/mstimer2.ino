#include <SPI.h>
#include <stdlib.h>
#include <SoftwareSerial.h>
#include <MsTimer2.h>
#define DEBUG true




String writeAPIKey = "8GDS7ZPPLTVJ83MG";
String cmd = "";
String getStr = "";

SoftwareSerial esp8266(2, 3); // RX/TX 설정, serial 객체생성

void check(){
  float temperature = random(100, 400)/10.0;
  int humidity = random(10, 100);

   // GET 방식으로 보내기 위한 String, Data 설정

  getStr +="GET /update?api_key=";
  getStr += writeAPIKey;
  getStr +="&field1=";
  getStr += String(temperature);
  getStr +="&field2=";
  getStr += String(humidity);
  getStr += "\r\n\r\n";

  Serial.println(getStr);

 

  // Send Data

  cmd = "AT+CIPSEND=";

  cmd += String(getStr.length());

  esp8266.println(cmd);

 

  if(esp8266.find(">")) esp8266.print(getStr);

  else {

    esp8266.println("AT+CIPCLOSE");

    Serial.println("AT+CIPCLOSE");  // alert user

  }
 
  
 
}

void setup() {  

  Serial.begin(9600);

  Serial.println();

  Serial.println("Status\tHumidity (%)\tTemperature (C)\t(F)");

  MsTimer2::set(1500,check);

  MsTimer2::start();



  esp8266.begin(9600);        //소프트웨어 시리얼 시작

  sendData("AT+RST\r\n", 2000, DEBUG);  //ESP8266 Reset
  sendData("AT+CWMODE=1\r\n", 1000, DEBUG); //dual mode로 설정
  sendData("AT+CWJAP=\"lsj\",\"123454321\"\r\n" ,5000, DEBUG); //사용할 공유기 설정

}



void loop() {
  
  

  // TCP 연결

  
  cmd += "AT+CIPSTART=\"TCP\",\"";
  
  cmd += "184.106.153.149"; // api.thingspeak.com 접속 IP

  cmd += "\",80";           // api.thingspeak.com 접속 포트, 80

  esp8266.println(cmd);

   

  if(esp8266.find("Error")){

    Serial.println("AT+CIPSTART error");

    return;

  }
  

  

 
}

String sendData(String command, const int timeout, boolean debug){
  String response = "";
  esp8266.print(command);
  long int time=millis();
  
  while((time+timeout)>millis()){
    while(esp8266.available()){
      char c=esp8266.read();
      response+=c;
    }
  }
  if(debug){
    Serial.print(response);
  }
 
  return response;
}
