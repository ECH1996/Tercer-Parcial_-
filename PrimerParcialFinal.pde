int screen, turn=1, P1, P2;
boolean player1, player2;
float a;
float y;
float x;
float r;
float dx;
float dy;

PImage g1;
PImage g2;
PImage g3;
PImage g4;
PImage g5;

PER J1, J2;

PER  p1;
PER1 p2;
PER2 p3;
PER3 p4;
PER4 p5;

PER  p6;
PER1 p7;
PER2 p8;
PER3 p9;
PER4 p0;

void setup(){
  size(800,600);
  J1 = new PER();
  J2 = new PER();
  
  p1 = new PER(35,120);
  p2 = new PER1(15,200);
  p3 = new PER2(25,150);
  p4 = new PER3(20,180);
  p5 = new PER4(30,130);
  
  p6 = new PER(35,120);
  p7 = new PER1(15,200);
  p8 = new PER2(25,150);
  p9 = new PER3(20,180);
  p0 = new PER4(30,130);
  
  g1 = loadImage("cat 1.png");
  g2 = loadImage("cat 2.png");
  g3 = loadImage("cat 3.png");
  g4 = loadImage("cat 4.png");
  g5 = loadImage("cat 5.png");
  
}

void draw(){
  pantallas();
}