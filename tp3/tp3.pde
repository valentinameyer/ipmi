//https://youtu.be/ZtZIWhbnjDg

  PImage imgObra;
  int cuadrados = 10;
  float rotacion = 0;
  
  void setup() {
    size(800, 400);
    imgObra = loadImage("obra13.jpg");
    noStroke();
    rectMode(CENTER);
    colorMode(HSB, 360, 100, 100);
  }
  
  void draw() {
    background(360);
    println(mouseX, mouseY);
    image(imgObra, 0, 0, 400, 400); //imagen lado izquierdo
    pushMatrix();
    translate(400, 0);
    for (int fila = 0; fila < 2; fila++) {
      for (int col = 0; col < 2; col++) {
        int q = fila * 2 + col;
        float cx = col * 200 + 100;
        float cy = fila * 200 + 100;
        float matiz = matizDe(q); // llama función float matizDe(int q)
        dibujarCuadrante(cx, cy, matiz);
      }
    }
    popMatrix();
  }
  
  float matizDe(int q) { //retorna valor númerico color en HSB
    float matiz = 0;
    switch (q) {
    case 0:
      matiz = 120; // verde
      break;
    case 1:
      matiz = 0; // rojo
      break;
    case 2:
      matiz = 30; // naranja
      break;
    case 3:
      matiz = 275; // violeta
      break;
    }
    return matiz;
  }
  
  float mapearPaso(float inicio, float fin, float i) { //permite automatizar degradados de los cuadrados
    return map(i, 0, cuadrados - 1, inicio, fin); // toma el número de cuadrado por el que voy pasando variable i y convierte ese paso en un color e/ inicio y fin del degradado
  }
  
  void dibujarCuadrante(float cx, float cy, float matiz) {
    float paso = 200 / (cuadrados - 0.5); //espacio entre cada cuadrado
  
    pushMatrix();
    translate(cx, cy);
    for (int i = 0; i < cuadrados; i++) {
      float lado = paso * (cuadrados - i - 0.5); //tamaño cuadrado en cada vuelta del bucle del ciclo for
      float s = mapearPaso(90, 30, i);
      float b = mapearPaso(50, 95, i);
  
      if (0 < i) {  //a partir del segundo cuadrado hacia adentro se rota
        rotate(rotacion);
      }
      fill(matiz, s, b); //color base, saturación, brillo
      rect(0, 0, lado, lado); //centro de cuadrante (0,0), ancho y alto "lado" (que calcula tamaño del cuadrado en cada vuelta del bucle)
    }
    popMatrix();
  }
  
  void mouseDragged() {
    rotacion += (pmouseX - mouseX) * 0.00025; //drageo el mouse y se rota el cuadrante
  }
  
  void mouseClicked() {
    if (mouseButton == RIGHT) { // si hago click derecho del mouse aumenta cantidad de cuadrados
      cuadrados ++;
    }
    if (mouseButton == LEFT) { // si hago click izquierdo del mouse disminuye cantidad de cuadrados
      cuadrados --;
      if ( cuadrados < 5) {
        cuadrados = 5 ;
      }
    }
  }
  
  void reiniciarVariables() {
    cuadrados = 10;
    rotacion = 0;
  }
  
  void keyPressed() {
    if (key == 'r') {
      reiniciarVariables();
    }
  }
