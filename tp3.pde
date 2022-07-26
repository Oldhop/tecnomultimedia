float posX = 50;
float posY= 50;
float incX, incY = 50;
float corX= 50;
float corY=50;
float vel;
float degradado;
int tam = 50;
boolean arriba, abajo, izquierda, derecha;
String [] textos = {"Encuentra la forma\n\nPresiona ENTER",
"Controles \n \nW = Arriba \nA = izquierda\nS= Abajo\nD = Derecha \n\n Debes llegar al rectangulo azul sin tocar otra forma\n\nPresiona ENTER para empezar",
"Perdedor",
"Ganador"};
int estado = 2;


void setup(){
  size(800, 600);
  vel = 2;
}
void draw() {
  background(255);
  
float distancia1 = dist( posX, posY,corX,corY);
float distancia2 = dist(posX, posY, incX,incY);

  if (estado==2) {
    pantallas(textos[0], width/2, height/3, 80 );
    }
    else if (estado==3) {
    pantallas(textos[1], width/2, 100, 30 );
    } 
     else if (estado==4) {
       incorrecto(tam,tam);
       correcto(width-width/3,height-height/3,tam,tam);
       movimiento();
       personaje();
     
      if (distancia1>posX){
      estado = 0; 
     }
    if (distancia2 >posX){
       estado = 1; 
   }
     }
     else if (estado==0) {
   pantallas(textos[3], width/2, height/2, 80 );
   }  
    else if (estado==1) {
    pantallas(textos[4], width/2, height/2, 80 );
    } 
    println(estado);
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
  
  if (estado<5){
   if (keyCode == ENTER){
    estado++;
    
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
