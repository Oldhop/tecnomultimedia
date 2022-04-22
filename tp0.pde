size (800, 600);
background(1, 50, 1);
//cabezon
fill(1800, 120, 100);
ellipse (800/2, 600/2, 600, 500);
fill(255);
ellipse (800/3, 240, 60, 50);//ojo izquierdo
fill(1);
ellipse (255, 245, 30, 35);//pupila izquierda
fill(255);
ellipse (250, 245, 20, 25);//brillo izquierdo
fill(255);
ellipse (800/3*2, 240, 60, 50);//ojo derecho
fill(1);
ellipse (800/3*2+10, 245, 30, 35);//pupila derecha
fill(255);
ellipse (800/3*2+15, 245, 20, 25);//brillo
fill(255, 0, 0);
ellipse(400, 400, 200, 100);//boca
line(300, 400, 500, 400);//linea en la boca

//escondido
fill(255);
rect(0, 80, 50, 20);//cuerpo
rect(50, 85, 15, 10);//cabeza
rect(45, 80, 5, -30);//brazo izquierdo
rect(45, 100, 5, 30);//brazo derecho
ellipse(60, 88, 2, 2);//ojo derecho
ellipse(60, 92, 2, 2);//ojo izquierdo
ellipse(55, 90, 5, 4);// boca
