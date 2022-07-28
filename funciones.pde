void pantallas(String texto, float px, float py, float tamText) {
  textSize(tamText);
  textAlign(CENTER);
  fill(0);
  text(texto, px, py);
}


void personaje(float posX_, float posY_, float ancho_) {
  push();
  for (float c =ancho_; c>0; c-=1) {
    noStroke();
    rectMode(CENTER);
    degradado = map(c, ancho_, 0, 50, 255);
    fill(degradado, degradado, 0);
    ellipse(posX_, posY_, c, c);
  }
  pop();
}

void correcto() {
  push();
  rectMode(CENTER);
  fill(40, 40, 255);
  rect(560, 340, tam, tam);
  pop();
}


void incorrecto(float incX_, float incY_ ) {
  push();
  rectMode(CENTER);
  fill (20);
  rect(500, 50, incX_, incY_);

  fill(50, 264, 57);
  ellipse(320, 550, incX_, incY_);

  fill(90, 250, 200);
  rect(450, 350, incX_, incY_);

  fill(255, 0, 0);
  ellipse(220, 400, incX_, incY_);

  fill(233, 23, 200);
  rect(200, 150, incX_, incY_);

  fill(123, 213, 166);
  ellipse(123, 264, incX_, incY_);

  fill(120, 219, 160);
  ellipse(635, 500, incX_, incY_);

  fill(90, 250, 200);
  rect(600, 200, incX_, incY_);

  fill(255, 230, 200);
  ellipse(415, 235, incX_, incY_);
  pop();
}
