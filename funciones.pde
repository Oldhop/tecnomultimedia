void pantallas(String texto, int px, int py, int tamText) {
  textSize(tamText);
  textAlign(CENTER);
  fill(0);
  text(texto, px, py);
 }


void personaje(){
for (int c =tam; c>0; c-=1) {
     noStroke();
     rectMode(CENTER);
     degradado = map(c, tam, 0, 50, 255);
     fill(degradado,degradado,0);
     rect(posX, posY,c,c);
  }
}

void correcto(int corX, int corY, int posX, int posY){
  for (int c =tam; c>0; c-=1) {
     noStroke();
     rectMode(CENTER);
     degradado = map(c, tam, 0, 50, 255);
     fill(degradado,degradado,0);
       rect(posX, posY, corX, corY);
  }
}
void incorrecto(int incX, int incY ){
       fill(degradado,0,0);
       rect(500,400,incX,incY);
       
       fill(50,264,57);
       ellipse(340,340,incX,incY);
       
       fill(90,190,200);
       rect(540,233,incX,incY);
       
       fill(255,0,0);
       ellipse(210,400,incX,incY);
       
       fill(233,23,200);
       rect(322,255,incX,incY);
       
       fill(123,213,166);
       ellipse(123,264,incX,incY);
}
