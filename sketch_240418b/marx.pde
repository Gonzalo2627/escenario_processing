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
    img2.resize(300, 200); 
    posicion = new PVector(anchoLienzo/2, 200);
    velocidad = new PVector(10, 0); 
  }
  
   public void dibujar() {
    imageMode(CENTER);
    image(img2, posicion.x, posicion.y);
  }
  
  public void mover() {  
    posicion.add(velocidad);
    
    if (posicion.x <= 0 || posicion.x >= 600) {
      velocidad.x *= -1;
    }
  }
}
