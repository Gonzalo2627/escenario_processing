private PImage imgA;
private color morado= color(137,133,216,500);
private payacho Marx;
private tragon kirby;

public void setup() {
  size(600, 600);
  imgA = loadImage("fondo.png");
  kirby = new tragon();
  kirby.setPosicion(new PVector(width/2,height/2));
  kirby.setVelocidad(new PVector(10,10));
  
  Marx = new payacho(width, height);
}

public void draw() {
  
  image(imgA, 300, 300,width, height );
  tint(morado);
  
  kirby.dibujar();
  actualizarVelocidadKirby();
  Marx.dibujar();
  Marx.mover();
}

public void keyPressed(){
  if(key=='d'){
    kirby.mover(1);
  }
  if(key=='a'){
    kirby.mover(0);
  }
  
  if(key=='w'){
    kirby.mover(2);
  }
  if(key=='s'){
    kirby.mover(3);
  }
  
}

public void actualizarVelocidadKirby(){
  if(kirby.getPosicion().x>(width/2)){
    kirby.getVelocidad().x=15;
  }else{
    kirby.getVelocidad().x=15;
  }
}
