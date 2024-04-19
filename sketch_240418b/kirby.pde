class tragon{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  private color morado= color(137,133,216,500);
  
  // CONSTRUCTOR 
  public tragon(){
    imagen = loadImage("Kirby.png");
    tint(morado);
  }
  
  public void dibujar(){
    imageMode(CENTER);
    image(imagen,posicion.x,500,80,80);
  }
  /**
  * Mueve la posicon hacia izquierda o derecha según lo 
  * que se indique en el atributo velocidad
  * direccion (0:izquierda; 1=derecha; 2 = arriba, 3= abajo)
  */
  public void mover(int direccion){
    if(direccion==0){
      this.posicion.x-=this.velocidad.x;
    }
    if(direccion==1){
      this.posicion.x+=this.velocidad.x;
    }
    if(direccion==2){
      this.posicion.y-=this.velocidad.y;
    }
    if(direccion==3){
      this.posicion.y+=this.velocidad.y;
    }
    
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  
  public PVector getVelocidad(){
    return this.velocidad;
  }
  
  public void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  }
  
}
