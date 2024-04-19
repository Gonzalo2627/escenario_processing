PImage imgA;

class payacho {
  private PVector posicion;
  private PVector velocidad;;
  private PImage img2;
  private int anchoLienzo;
  private int altoLienzo;
  
  public payacho(int anchoLienzo, int altoLienzo) {
    this.anchoLienzo = anchoLienzo;
    this.altoLienzo = altoLienzo;
    img2 = loadImage("Marx.png");
    img2.resize(250, 200); // Redimensiona la imagen del payacho
    posicion = new PVector(anchoLienzo/2, altoLienzo/2);
    velocidad = new PVector(10, 0); // Velocidad horizontal por defecto
  }
  
  public void dibujar() {
    imageMode(CENTER);
    image(img2, posicion.x, posicion.y);
  }
  
  public void mover() {
    // Mover el payacho
    posicion.add(velocidad);
    
    // Verificar colisión con bordes del lienzo
    if (posicion.x <= 0 || posicion.x >= 600) {
      // Invertir la dirección horizontal
      velocidad.x *= -1;
    }
  }
}

payacho Marx;

void setup() {
  size(600, 600);
  imgA = loadImage("fondo.png");
  imgA.resize(width, height); // Ajusta el tamaño de la imagen al tamaño del lienzo
  
  Marx = new payacho(width, height); // Pasa las dimensiones del lienzo al constructor de payacho
}

void draw() {
  background(255);
  
  // Dibuja el fondo sin desplazamiento
  image(imgA, 0, 0, width, height);
  
  Marx.dibujar();
  Marx.mover();
}
