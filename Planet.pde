class planet {
  float speed;
  float strecke;
  float durchmesser;

  PShape globe;

  planet zentralKoerper;
  float zentralXPos;
  float zentralYPos;
  float zentralRadius;

  float xPos;
  float yPos;

  //Constructor for sun
  planet(int d, PImage img) {
    zentralRadius = 0;
    durchmesser = d;

    noStroke();
    noFill();
    globe = createShape(SPHERE, durchmesser);
    globe.setTexture(img);
  }

  //Planeten, Monde
  planet(float zR, float d, float v, PImage img) {
    zentralRadius = zR;

    durchmesser = d;
    speed = v;

    noStroke();
    noFill();
    globe = createShape(SPHERE, durchmesser);
    globe.setTexture(img);
  }

  void render() {
    pushMatrix();
    translate(width/2,height/2, 0);
    noStroke();
    pushMatrix();
    rotateY(millis()*0.00045 * TWO_PI* speed);
    translate(0, 0, zentralRadius);
    shape(globe);
    popMatrix();
    noLights();
    pointLight(255, 255, 255, 0, 0, -100);
    ambientLight(120, 120, 120);
    popMatrix();
  }
}