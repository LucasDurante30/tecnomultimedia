void aplicacionDeImagenes () {
  img[0] = loadImage("data/caperusitaroja.png");
  img[1] = loadImage("data/cap2.png");
  img[2] = loadImage("data/cap3.png");
  img[3] = loadImage("data//casadecap.png");
  img[4] = loadImage("data/caperucitaysumama.png");
  img[5] = loadImage("data/bosque.png" );
  img[6] = loadImage("data/lobo.png");
  img[7] = loadImage("data/abueladecaperucita.png");
  img[8] = loadImage("data/caperucitacasa.png");
  img[9] = loadImage("data/caperucitaenlacasa.pmg");
  img[10] = loadImage("data/caperucitaconellobo.png");
  img[11] = loadImage("data/ccaperucita2.png");
  img[12] = loadImage("data/caycap.png");
  img[13] = loadImage("data/leñadorlobo.png");
  img[14] = loadImage("data/loboenlacama.png");
  img[15] = loadImage("data/leñador.png");
  int randomIndex = floor(random(3)); // Genera una imagen aleatoria entre las primeras 3 nombradas cada vez q lo abras
  image(img[randomIndex], 0, 0, 600, 600);
}
