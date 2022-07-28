//calcula la distancia entre coordenadas 
// y si es menor a suma de radios
//devuelve true. Si no, devuelve false:

boolean calculaColision( float x1_, float y1_, float x2_, float y2_, float sumaDeRadios_ ) {


  float distancia = dist(x1_, y1_, x2_, y2_ );
  if ( distancia < sumaDeRadios_ ) {
    return true;
  } else {
    return false;
  }
}

void colision() {
  //evaluo colision con objetivo:

  if ( calculaColision( posX, posY, 560, 340, tam/2+tam/2 ) ) {
    estado = 3;
  }

  if ( calculaColision( posX, posY, 500, 50, tam/2+tam/2 ) ) {
    estado = 4;
  }

  if ( calculaColision( posX, posY, 320, 550, tam/2+tam/2 ) ) {
    estado = 4;
  }

  if ( calculaColision( posX, posY, 450, 350, tam/2+tam/2 ) ) {
    estado = 4;
  }

  if ( calculaColision( posX, posY, 220, 400, tam/2+tam/2 ) ) {
    estado = 4;
  }

  if ( calculaColision( posX, posY, 200, 150, tam/2+tam/2 ) ) {
    estado = 4;
  }

  if ( calculaColision( posX, posY, 123, 264, tam/2+tam/2 ) ) {
    estado = 4;
  }

  if ( calculaColision( posX, posY, 635, 500, tam/2+tam/2 ) ) {
    estado = 4;
  }

  if ( calculaColision( posX, posY, 415, 235, tam/2+tam/2 ) ) {
    estado = 4;
  }
  if ( calculaColision( posX, posY, 600, 200, tam/2+tam/2 ) ) {
    estado = 4;
  }
}
