//Durante Lucas 94729/2. Trabajo Practico Numero 1, presentacion del TAPIR

String estado;
int c; //contador
PImage imagenuno;
PImage tapir2;
PImage tapier3;
PImage tapir5;
int mivariable = 1000;
int vel = 1;
PFont Nuevafuente;

void setup() {
  size( 640, 480 );
  textSize( 50 );
  fill(200);
  strokeWeight(5);
  imagenuno = loadImage("originaltapir.jpg");
  tapir2= loadImage ("tapir2.png");
  tapier3= loadImage ("tapier3.jpg");
  tapir5 = loadImage ("tapirr5.jpg");
  Nuevafuente= loadFont("Fuentenueva.vlw");
  textFont(Nuevafuente, 46);
  estado= "menu";
  frameRate( 60 );
}
void draw() {
  if ( estado.equals("menu") ) {
    //MENU
    background(imagenuno);
    mivariable = frameCount/2;
    println(mivariable);
    text( "El Tapir", mivariable, 250 );
    fill(222, 184, 145);
    circle(155, 300, 80 );
    //Pantalla 1
  } else if (estado.equals("p1") ) {
    background(tapir2);
    mivariable = frameCount/2;
    println(mivariable);
    text("El tapir habitan en los bosques tropicales \nO en bosques montañosos y humedos ", mivariable, 40);
    text("Su alimentacion se basa \n En hojas,semillas y \nCortezas de los arboles", mivariable, 200);
    textSize(30);
    if (mivariable>100) {
      mivariable++;
    }
    c++;
    if ( c >= 290 ) { //tiempo de pantalla
      estado = "p2";
      c = 0;
    }
  } else if (estado.equals("p2") ) {
    //Pantalla 2
    background(tapier3);
    background(tapir2);
    mivariable = frameCount/2;
    fill(237, 22, 22); //cambie el color del texto ya que el color original (el que venia usando) se perdia en el fondo de la imagen
    text( "Los tapires son mamiferos del Orden Perissodactyla \n Eso quiere decir que tiene numero de dedos impar", mivariable/3, 50  );
    text( "La cria del tapir, tiene un pelaje rallado\nQue luego cambia con los 18 meses\nDe crecimiento", mivariable/4, 380);
    textSize (29);
    c++;
    if ( c >= 290 ) { //tiempo de pantalla
      estado = "p3";
      c = 0;
    }
  } else if (estado.equals("p3") ) {
    //Pantalla 3
    background(tapir5);
    mivariable = frameCount/2;
    println(mivariable);
    fill(222, 184, 145);
    circle(325, 410, 80);
    text( "Esto es todo Profe\n espero le gusten los tapires", mivariable/3, 140 );
    text ("Para volver a la pagina principal apretar \nel circulo", mivariable/3, 350);
  } else {
    text( "no es ningun \n estado preseteado", width/2, height/2 );
  }
  println( estado );
}

void mousePressed() {
  if ( estado.equals("menu") ) {
    if ( dist(155, 300, mouseX, mouseY) < 80/2 ) {
      estado = "p1";
    }
  }
  if ( estado.equals("p3") ) {
    estado = "menu" ;
  }
}
