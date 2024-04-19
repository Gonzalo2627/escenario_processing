class payacho {
  private PVector posicion;
  private PVector velocidad;
  private PImage img2;
  private int anchoLienzo;
  private int altoLienzo;
  
  public payacho(int anchoLienzo, int altoLienzo) {
    this.anchoLienzo = anchoLienzo;
    this.altoLienzo = altoLienzo;
    img2 = loadImage("Marx.png");
    img2.resize(300, 200); // Redimensiona la imagen del payacho
    posicion = new PVector(anchoLienzo/2, 200);
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
