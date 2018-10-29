class PER{
  int atack;
  int life;
  
  PER(int atack_, int life_){
    atack = atack_;
    life = life_;
  }
  PER(){}
  
  void p(){
  pushMatrix();
  image(g1,0,0);
  popMatrix();
  }
}

class PER1 extends PER{
  PER1(int atack_, int life_){
    super(atack_, life_);
  }
  void p(){
   pushMatrix();
   image(g2,0,0);
   popMatrix();
  }
}
  
class PER2 extends PER{
  PER2(int atack_, int life_){
    super(atack_, life_);
  }
  void p(){
  pushMatrix();
  image(g3,0,0);
  popMatrix();
  }
}

class PER3 extends PER{
  PER3(int atack_, int life_){
    super(atack_, life_);
  }  
  void p4(){
  pushMatrix();
  image(g4,0,0);
  popMatrix();
  }
}

class PER4 extends PER{
  PER4(int atack_, int life_){
    super(atack_, life_);
  }
  void p(){
  pushMatrix();
  image(g5,0,0);
  popMatrix();
  }
}