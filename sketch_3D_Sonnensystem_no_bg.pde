planet planeten[]  = new planet[10];
int planetCount = 10;

PImage background;
PImage sunTexture;
PImage [] textures = new PImage[9];

void setup() {
  size(900, 900, P3D);
  smooth();
  colorMode(RGB);

  background = loadImage("background.jpg"); //https://img.purch.com/h/1000/aHR0cDovL3d3dy5zcGFjZS5jb20vaW1hZ2VzL2kvMDAwLzA0NS83OTIvb3JpZ2luYWwvYXJlYS1hcm91bmQtdjQ3MS10YXVyaS5qcGc=

  sunTexture = loadImage("sun.jpg"); // https://raw.githubusercontent.com/CodingTrain/website/master/CodingChallenges/CC_09_SolarSystemGenerator3D_texture/data/sun.jpg
  textures[0] = loadImage("mercury.jpg"); //https://raw.githubusercontent.com/CodingTrain/website/master/CodingChallenges/CC_09_SolarSystemGenerator3D_texture/data/mercury.jpg
  textures[1] = loadImage("venus.jpg"); //http://planetpixelemporium.com/download/download.php?venusmap.jpg, http://planetpixelemporium.com/venus.html
  textures[2] = loadImage("earth.jpg"); //https://raw.githubusercontent.com/CodingTrain/website/master/CodingChallenges/CC_09_SolarSystemGenerator3D_texture/data/earth.jpg
  textures[3] = loadImage("moon.jpg"); //http://planetpixelemporium.com/download/download.php?moonmap1k.jpg, http://planetpixelemporium.com/earth.html
  textures[4] = loadImage("mars.jpg"); //https://raw.githubusercontent.com/CodingTrain/website/master/CodingChallenges/CC_09_SolarSystemGenerator3D_texture/data/mars.jpg
  textures[5] = loadImage("jupiter.jpg"); //http://planetpixelemporium.com/download/download.php?jupitermap.jpg, http://planetpixelemporium.com/jupiter.html
  textures[6] = loadImage("saturn.jpg"); //http://planetpixelemporium.com/download/download.php?saturnmap.jpg, http://planetpixelemporium.com/saturn.html
  textures[7] = loadImage("uranus.jpg"); //http://planetpixelemporium.com/download/download.php?uranusmap.jpg, http://planetpixelemporium.com/uranus.html
  textures[8] = loadImage("neptun.jpg"); //http://planetpixelemporium.com/download/download.php?neptunemap.jpg, http://planetpixelemporium.com/neptune.html

  planeten[0] = new planet (80, sunTexture);               //Sonne: durchmesser, R,G,B
  planeten[1] = new planet (100, 9, 0.96, textures[0]);    //Merkur: zentralKoerper, zentralRadius,durchmesser, geschwindigkeit, R,G,B
  planeten[2] = new planet (130, 17, 0.7, textures[1]);    //Venus
  planeten[3] = new planet (160, 20, 0.6, textures[2]);    //Erde
  planeten[4] = new planet (185, 3, 0.6, textures[3]);     //Mond
  planeten[5] = new planet (210, 10, 0.48, textures[4]);   //Mars
  planeten[6] = new planet (270, 30, 0.26, textures[5]);   //Jupiter
  planeten[7] = new planet (350, 25, 0.2, textures[6]);    //Saturn
  planeten[8] = new planet (410, 22, 0.14, textures[7]);   //Uranus
  planeten[9] = new planet (470, 23, 0.1, textures[8]);    //Neptun
}

void draw() {
  background(0,10,30);
  camera(width/2.0, height/2.0-mouseX, (height/2.0) / tan(PI*30.0 / 180.0)-mouseY, width/2.0, height/2.0, 0, 0, 1, 0); //Default-Modus
  
  for (int index = 0; index < planetCount; index++) {
    planeten[index].render();
  }
}