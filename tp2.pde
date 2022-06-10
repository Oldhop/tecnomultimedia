// https://youtu.be/eSJaExbSidk
// Presionar 1 para iniciar
// Presionar 2 para ver la ilusion optica
int cant = 6;
int tam;
float r;
float g;
float b;
void setup() {
  size(600, 600);
  tam = width;
}
void draw(){
  background(0);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      for (int c =tam; c>0; c-=1) {
        rectMode(CENTER);
        noStroke();
        if (key == '1') {
         r = map(c, tam, 0, 50, 255);
         g = map(tam, c, 0, 50, 255);
         b = map(c, tam, 0, 255, 50);
}
if (key == '2'){
  r = map(c, tam, 0, 40, 255);
  g = map(c, tam, 0, 40, 255);
  b = map(c, tam, 0, 40, 255);
 }
        fill(r, g, b);
        ellipse(i*tam+tam/2, j*tam+tam/2, c, c);
        fill(g, r, b);
        rect(width/2, 0, c, c);
        fill(0,0,0);
        ellipse(height/2,width/2, 5, 5);
      }
   }
  }
} 
