void pantallas(){
  switch(screen){
    case 0:
    background(0);
    pushMatrix();
    frameRate(2);
    smooth();
    fill(255,90);
    r = random(3, 8);
    x = random(r, width-r);
    y = random(r, height-r);
    dx = map(noise(3.00+a), 700, 1, 700, 3);
    dy = map(noise(4.00+a), 700, 1, 700, 3);
    ellipse(x + dx, y + dy, r, r);
    a = a + 0.09;
    textAlign(CENTER);
    textSize(12);
    fill(230);
    text("Presiona Enter para continuar",600,450);
    text("Strange Magic:\n\nThoth es un pequeño gato, aprendiz de la magia oscura. Su proposito sera volverse el mago mas poderoso y \nrespetado de todos, incluso volverse su rey.\nTu decides si ayudarlo en su proposito o derrotarlo",400,200);
    popMatrix();
     
    if(key == ENTER){
      screen = 1;
    }
    
    break;
    
    case 1:
    background(#301A48);
    pushMatrix();
    frameRate(10);
    smooth();
    fill(230);
    r = random(3, 10);
    x = random(r, width-r);
    y = random(r, height-r);
    dx = map(noise(1.00+a), 500, 10, 600, 9);
    dy = map(noise(1.00+a), 500, 10, 600, 9);
    ellipse(x + dx, y + dy, r, r);
    a = a + 0.03;
    text("Bestia\nPresiona Q",100,100);
    text("Hada\nPresiona W",250,100);
    text("Mago\nPresiona E",400,100);
    text("Toth\nPresiona R",550,100);
    text("Principe Gato\nPresiona T",700,100);
    text("Bestia\nPresiona 1",100,400);
    text("Hada\nPresiona 2",250,400);
    text("Mago\nPresiona 3",400,400);
    text("Toth\nPresiona 4",550,400);
    text("Principe Gato\nPresiona 5",700,400);
    popMatrix();
    
    pushMatrix();
    translate(25,150);
    scale(.1);
    p1.p();
    popMatrix();
    
    pushMatrix();
    translate(200,150);
    scale(.1);
    p2.p();
    popMatrix();
    
    pushMatrix();
    translate(350,150);
    scale(.1);
    p3.p();
    popMatrix();
    
    pushMatrix();
    translate(475,150);
    scale(.1);
    p4.p();
    popMatrix();
    
    pushMatrix();
    translate(625,150);
    scale(.1);    
    p5.p();
    popMatrix();
    
    switch(key){
      case 'q':
      player1 = true;
      P1 = 0;
      break;
      
      case 'w':
      player1 = true;
      P1 = 1;
      break;
      
      case 'e':
      player1 = true;
      P1 = 2;
      break;
      
      case 'r':
      player1 = true;
      P1 = 3;
      break;
      
      case 't':
      player1 = true;
      P1 = 4;
      break;
      
      case '1':
      player2 = true;
      P2 = 0;
      break;
      
      case '2':
      player2 = true;
      P2 = 1;
      break;
      
      case '3':
      player2 = true;
      P2 = 2;
      break;
      
      case '4':
      player2 = true;
      P2 = 3;
      break;
      
      case '5':
      player2 = true;
      P2 = 4;
      break;
    }
    if (player1 && player2){
      screen = 2;
    }
    break;
    
    case 2:
    background(#301A48);
    pushMatrix();
    frameRate(10);
    smooth();
    fill(230);
    r = random(3, 10);
    x = random(r, width-r);
    y = random(r, height-r);
    dx = map(noise(1.00+a), 500, 10, 600, 9);
    dy = map(noise(1.00+a), 500, 10, 600, 9);
    ellipse(x + dx, y + dy, r, r);
    a = a + 0.03;
    textSize(40);
    fill(0);
    text("PS:",50,100);
    text("PS:",550,100);
    text(J1.life,125,100);
    text(J2.life,625,100);
    popMatrix();
    
    pushMatrix();
    translate(100,200);
    scale(0.1);
    switch(P1){
      case 0:
      J1 = p1;
      J1.p();
      break;
      
      case 1:
      J1 = p2;
      J1.p();
      break;
      
      case 2:
      J1 = p3;
      J1.p();
      break;
      
      case 3:
      J1 = p4;
      J1.p();
      break;
      
      case 4:
      J1 = p5;
      J1.p();
      break;
    }
    popMatrix();
    
    pushMatrix();
    translate(500,200);
    scale(0.1);
    switch(P2){
      case 0:
      J2 = p6;
      J2.p();
      break;
      
      case 1:
      J2 = p7;
      J2.p();
      break;
      
      case 2:
      J2 = p8;
      J2.p();
      break;
      
      case 3:
      J2 = p9;
      J2.p();
      break;
      
      case 4:
      J2 = p0;
      J2.p();
      break;
    }
    popMatrix();
    
    if(turn == 1){
      text("Jugador 1: Presiona A",300,500);
      if (keyPressed){
        if(key == 'a' || key == 'A'){
          J2.life = J2.life - J1.atack;
          turn=2;
        }
      }
    }
    
    if(turn == 2){
      text("Jugador 2: Presiona 6",300,500);
      if (keyPressed){
        if(key == '6'){
          J1.life = J1.life - J2.atack;
          turn=1;
        }
      }
    }
    
    if(J1.life <= 0 || J2.life <= 0){
      screen = 3;
    }
    break;
    
    case 3:
    background(#301A48);
    pushMatrix();
    frameRate(10);
    smooth();
    fill(230);
    r = random(3, 10);
    x = random(r, width-r);
    y = random(r, height-r);
    dx = map(noise(1.00+a), 500, 10, 600, 9);
    dy = map(noise(1.00+a), 500, 10, 600, 9);
    ellipse(x + dx, y + dy, r, r);
    a = a + 0.03;
    if(J1.life>J2.life){
      fill(255);
      textSize(50);
      text("Ganaste\nJugador 1",300,300);
    }
    if(J2.life>J1.life){
      fill(255);
      textSize(50);
      text("Ganaste\nJugador 2",300,300);
    }
    textSize(20);
    text("Presiona Z para reiniciar",300,500);
    popMatrix();
    if (key == 'z' || key == 'Z'){
      turn = 1;
      screen = 0;
      player1 = false;
      player2 = false;
      p1.life = 120;
      p2.life = 200;
      p3.life = 150;
      p4.life = 180;
      p5.life = 130;
      p6.life = 120;
      p7.life = 200;
      p8.life = 150;
      p9.life = 180;
      p0.life = 130;
      
    }
    break;
    
  }
}