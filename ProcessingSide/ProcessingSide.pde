import processing.serial.*;

Serial port;
String incomingValue;

void setup() {
  String portName = Serial.list()[0];
  port = new Serial(this, portName, 9600);
}

void draw() {
  while(port.available() > 0) {
    incomingValue = port.readStringUntil('\n');
  }
  
  println(incomingValue);
  
  delay(500); //so that the program doesn't bug out and die
}