int inicio, fin;
float posy;
PImage fondo;
String texto;
int contador;
PImage abeja;
PFont asda;
PImage logo;

void setup() {
  size(720, 420);
asda = loadFont("asda.vlw");
  fondo = loadImage("fondo.png");
  abeja = loadImage("abeja.png");
  logo = loadImage ("logo.png");
inicio = width+ 200;
  fin = -20 ;
 textFont(asda, 25);
 texto = ("Producer\nKelly Crews");
 contador = 1;
}

void draw(){
  if (contador<=6){
  background(fondo);
  textAlign(CENTER);
  textSize(60);
   fill(0);
   stroke(100);
  text(texto, width/2,height/2-150);
 posy = random(290, 300);
  image(abeja, inicio, posy);
  if (inicio <= 0) {
    fin = -width/2;
    
    if (contador == 1) {
    
    texto = ("Producer\nKelly Crews");
  }
   else if (contador == 2) {
    
    texto = ("co producer\nPendleton Ward\nproduction manager\nKeith Mack");
  }
    else if (contador== 3) {
      texto = ("Voices\nFinn     Jeremy Shada\nJake     John Dimaggio");
    }
    else if (contador== 4) {
      texto = ("composer Casey Basichis\nmusic editor Nick Carr");
    }
    else if (contador== 5) {
      texto = ("for cartoon network studios\n\nexecutives producers\nBrian A. Miller\nJennifer Pelphrey");
    }
    else if (contador== 6) {
      texto = ("");
    }
  }
  }
    else  {
      texto = ("");
      background(0);
      image(logo, width/3, height/3);
     
    }
  if (inicio< (-50)) {
    inicio = width+200;
    if (contador <=6){
      contador ++;
  }
  }
  fin += 2;
  inicio -= 2;
 
}

void keyPressed(){
if (key == ' ') {contador = 1;
}
}
