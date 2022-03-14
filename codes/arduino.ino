#include <Servo.h>

Servo ser_0;     
Servo ser_1;      
Servo ser_2;      
Servo ser_3;      

int angles [4][11] = {{90,90,90,90,90,90,90,90,90,90,90},         //q0    //first motor will not move
                      {45,39,39,43,50,61,75,90,104,118,131},      //q1  // Trajectory staright line  
                      {0,113,24,40,58,72,78,77,71,61,51},         //q2
                      {60,89,109,124,133,134,127,118,108,96,82}}; //q3
int home_shoot [4][15] = {{90,90,90,90,90,90,90,90,90,90,90,90,90,90,90},
                     {60,55,50,45,40,36,32,28,24,20,16,12,8,4,0},
                     {60,55,50,45,40,36,32,28,24,20,16,12,8,4,0},
                     {60,58,55,52,50,48,46,44,42,40,38,36,34,32,30}};
int shoot_ [4][15] = {{90,90,90,90,90,90,90,90,90,90,90,90,90,90,90},
                     {0,5,10,15,20,25,33,40,48,55,63,70,78,85,90},
                     {0,4,8,12,16,20,24,28,32,36,40,45,50,55,60},
                     {30,32,34,36,38,40,42,44,46,48,50,52,55,58,60}};

                                // X       Y       Z
double XYZposition [11][3] =  {{23.5748,-2.3000,31.3222},         // initial position   
                              {18.0738,-2.3000,28.0835},  
                              {12.5728,-2.3000,24.8448},   
                              {7.0719,-2.3000,21.6060},   
                              {1.5709,2.3000,18.3673},   
                              {-3.9301,-2.3000,15.1286},   
                              {-9.4311,-2.3000,11.8899},   
                              {-14.9321,-2.3000,8.6512},   
                              {-20.4330,-2.3000,5.4124},   
                              {-25.9340,-2.3000,2.1737},    
                              {-31.4350,-2.3000,-1.0650}};        // final position
void setup() {
  ser_0.attach(5); // 0 to 180 HOME 90
  ser_1.attach(9); // back 0 to 120 HOME 60
  ser_2.attach(10); // back 0 to front 60 HOME 60
  ser_3.attach(11); // back 30 to front 90 HOME 60
  Serial.begin(9600);
//  line();
  
}
void loop() {
  delay(100);
  homeP();
  delay(1000);
  shoot();
  delay(100);
  homeP();
  delay(10000);
}
void line(){
  for(int i=0;i<11;i++){          
    for(int j=0;j<4;j++){ 
      servo(j,angles[j][i]);      
      delay(100);
    }
    for(int j=0;j<3;j++){
      Serial.print(XYZposition[i][j]);
      Serial.print(" ");
    }
      Serial.println();
  }
  Serial.println("************************************");
  delay(2000);
  for(int i=10;i>=0;i--){
    for(int j=3;j>=0;j--){
      servo(j,angles[j][i]);
      delay(300);
    }
    for(int j=0;j<3;j++){
      Serial.print(XYZposition[i][j]);
      Serial.print(" ");
    }
      Serial.println();
  }
}

void servo(unsigned char servo_num, unsigned char angle){
  switch(servo_num){
    case 0:
        ser_0.write(angle);
        break;
    case 1:
        ser_1.write(angle);
        break;
    case 2:
        ser_2.write(angle);
        break;
    case 3:
        ser_3.write(angle);
        break;
    default:
        break;
  }
}
void homeP(){
  ser_0.write(90);
  ser_1.write(60);
  ser_2.write(60);
  ser_3.write(60);
  }
void shoot(){
  for(int i=0;i<15;i++){          
    for(int j=0;j<4;j++){ 
      servo(j,home_shoot[j][i]);      
      delay(50);
    }
  }
  delay(2000);
  for(int i=0;i<15;i++){          
    for(int j=0;j<4;j++){ 
      servo(j,shoot_[j][i]);      
      delay(1);
    }
  }
}
