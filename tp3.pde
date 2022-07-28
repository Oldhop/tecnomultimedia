//Garcia Daniel tp3
float posX = 250;
float posY = 300;
float vel= 2;
float degradado;
int tam = 100;
boolean arriba, abajo, izquierda, derecha;
String [] textos = {
  "Encuentra la forma\n\nPresiona ENTER", 
  "Controles \n \nW = Arriba \nA = izquierda\nS= Abajo\nD = Derecha \n\n Debes llegar al cuadrado azul sin tocar otra forma\n\nPresiona ENTER para empezar", 
  "~Ganador~", 
  "Perdedor"};
int estado;


void setup() {
  size(800, 600);
}
void draw() {
  if (estado==0) {
    background(255);
    pantallas(textos[0], width/2, height/3, 80 );
  } 
  else if (estado==1) {
    background(255);
    correcto();
    personaje(posX, posY, tam);
    pantallas(textos[1], width/2, 100, 30 );
  } 
  else if (estado==2) {
    background(0);
    incorrecto(tam, tam);
    correcto();
    movimiento();
    personaje(posX, posY, tam);
    colision();
  } 
  else if (estado==3) {
    background(100, 100, 255);
    pantallas(textos[2], width/2, height/2, 80 );
  } 
  else if (estado==4) {
    background(255, 100, 100);
    pantallas(textos[3], width/2, height/2, 80 );
  }
}


void keyPressed() {

  if (key == 'W' || key == 'w') {
    arriba = true;
  }
  if (key == 'A'  || key == 'a') {

    izquierda = true;
  }
  if (key == 'S' || key == 's') {
    abajo = true;
  }
  if (key == 'D' || key == 'd') {
    derecha = true;
  }

  if (estado<2) {
    if (keyCode == ENTER) {
      estado++;
    }
  }
  if (estado==3||estado==4) {
    if (keyCode == ENTER) {
      estado=0;
      posX=250;
      posY=300;
    }
  }
}
void keyReleased() {
  if (key == 'W' || key == 'w') {
    arriba = false;
  }
  if (key == 'A'  || key == 'a') {
    izquierda = false;
  }
  if (key == 'S' || key == 's') {
    abajo = false;
  }
  if (key == 'D' || key == 'd') {
    derecha = false;
  }
}


void movimiento() {

  if (arriba == true) {
    posY -=1 * vel;
  }

  if (abajo == true) {
    posY +=1 * vel;
  }

  if (izquierda == true) {
    posX -=1 * vel;
  }

  if (derecha == true) {
    posX += 1 * vel;
  }
}
