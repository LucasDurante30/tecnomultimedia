//TP0- Durante Lucas- legajo: 94729/2- Comisión 2- Dibujo "kiwi" 

PImage kiwi; 

void setup (){
  size (800,400);
  background (88,139,74);      // color del fondo 
  
  kiwi = loadImage ("kiwiii.jpg") ;
    }
 
void draw (){
  
image(kiwi,0,0,400,400);

fill(0);
 rect (400,0,200,70);        //detalle del fondo oscuro, por detras del tronco

fill(103,89,6);              //tronco del fondo
 rect(400,60,400,70);

fill(188,134,112);//suelo 
 rect (400,300,400,100);
 
fill(229,76,42);            //hojas rojas
 circle (690, 309,13);
 circle (560, 310, 16);
 circle (490, 340,14);

fill(242,245,104);           //hojas amarillas
 circle (700,390,12);
 circle (705,395,13);
 circle (750, 390, 12);
 circle (755, 395,15);
 circle (730, 380,13);
 circle (735, 385,15);
 circle (690, 360, 13);
 circle (580, 340,12);
 circle (585, 346,14);
 circle (420, 350,16);
 circle (490, 370,13);
 circle (430, 320, 12);
 circle (460, 340, 13);

 noStroke ();                    //le saque los bordes para que no se vean las formas que utilice para recrear al Kiwi
fill(142,110,86);               //cuerpo y cabeza
  circle (660,140,90);
  rect (600,170,50,100);
  ellipse (555,235,200,150);
  circle (545,300,35);
   
fill(189,183,107);           //pico
 triangle(695,160,700,140,790,200);
 
fill(0,0,0);                 // ojo y nariz 
 circle (675, 125,12);
 circle (701, 144,6);
 
fill(47,79,79);              //pata y garra 
 rect (538,316,11,54);
 rect (538,370,60, 7);

}
   
