//Durante lucas 94729/2
//https://youtu.be/xSx6-6HDWas (video de youtube)


PImage ilusioon; // variable para imagen
float angulo = 0; // variable de un número flotante para darle un valor al ángulo
float rotacionV = 0.01; // variable de un número flotante para la velocidad de rotación del ángulo
float inicialRotacionV; // variable para luego retornar la rotación al valor inicial
boolean cambiarColor = false; // variable para controlar el cambio de color de los cuadrados negros
boolean cambiarColorCuadrado = false; // variable para controlar el cambio de color de los cuadrados blancos

void setup() {
  size(800, 400);
  ilusioon = loadImage("data/ilusioon.jpeg");
  inicialRotacionV = rotacionV;  // Guardar el valor inicial de rotacionV
}

void draw() {
  background(255);
  image(ilusioon, 0, 0, 400, 400);
  rectMode(CENTER);
  translate(600, 200);  // Translado el centro de los cuadrados al costado derecho de la pantalla
  rotate(angulo);  // Rotar el ángulo de los cuadrados sobre su eje
  noStroke(); // Saco bordes para que haya más espacio entre cuadrados
// Dibujar los cuadrados
  for (int i = 30; i >= 1; i--) {
    if (i % 2 == 0) {
      if (cambiarColor) {
        fill(255, 0, 0); // Cambiar el color a rojo si la variable cambiarColorNegro es verdadera
      } else {
        fill(0);
      }
    } else {
      if (cambiarColorCuadrado) {
        fill(148, 0, 211); // Cambiar el color a violeta si la variable cambiarColorBlanco es verdadera
      } else {
        fill(255);
      }
    }
    drawSquare(i);  // Llamar a la función para que se encargue de dibujar los cuadrados
  }

  angulo += rotacionV;  // Incrementar el ángulo de rotación
}
void drawSquare(int index) { // toma un parámetro "index" y dibuja un cuadrado utilizando el tamaño calculado dentro de la función, en el bucle for, se llama a esta función pasando el valor actual de i como argumento. 
  float size = index * 10;
  rect(0, 0, size, size);
}

void keyPressed() {
  if (key  == 'M' || key == 'm') {
    cambiarColor = !cambiarColor; // Cambiar el valor de la variable cambiarColorNegro al presionar la tecla "M"
  } else if (key == 'B' || key == 'b') {
    cambiarColorCuadrado = !cambiarColorCuadrado; // Cambiar el valor de la variable cambiarColorBlanco al presionar la tecla "B"
  } else if (key == ' ') {
    angulo = 0; // Restablecer el ángulo a 0
    rotacionV = inicialRotacionV; // Restablecer rotacionV al valor inicial
    cambiarColor = false; // Restablecer cambiarColorNegro a false
    cambiarColorCuadrado = false; // Restablecer cambiarColorBlanco a false
  }
}

void mouseMoved() {
  rotacionV = map(mouseX, 0, width, -0.1, 0.1);  // Mapear la velocidad de rotación según la posición del mouse para que la ilusión gire
}
