  PImage img;
  PImage imgMickeyMouse, imgminniecapturada, imgroble, imggema1,imgpayaso,imggema2, imgsireno, imggema3, imgsombra, imggema4, imgdragon,imggema5,imgcastillodentro,imggema6;
  PImage imgrelojero, imggema7, imgpuente, imgmizrabel;
  float x1, x2; //Para fondo bucle
  float velocidad = 2; // Velocidad fondo bucle
  
  
  PFont title;
  float opacidadRect1; //opacidad del rectángulo de la pantalla de inicio que contiene el texto acerca de la historia
  
  
  int duracionPantalla = 20000;
  int y; //eje y
  int decOpacity = 5;
  int m = millis();
  int pantalla = 0;
  float opacidad = 255;
  int tiempoInicioPantalla = 0;
  
  void setup() {
    size(640, 480);
  
  
    //FONDO PARA TODAS LAS PANTALLAS
    img = loadImage("backgroundcastillo.jpg");
  
  
  
    println(m/1000);
  
    //IMAGENES
    imgMickeyMouse = loadImage("mickeymouse inicio.png");
    img.resize(width, height);
  
    imgminniecapturada = loadImage("mickeyminnieybruja.png");
  
  imgroble = loadImage("elviejoroble.png");
   imggema1= loadImage("gema1.png");
    
    
    imgpayaso = loadImage("payaso.png");
    imggema2= loadImage("gema2.png");
    
    imgsireno = loadImage("sireno.png");
    imggema3= loadImage("gema3.png");
    
    imgsombra = loadImage("sombramickey.png");
    imggema4= loadImage("gema4.png");
    
    imgdragon = loadImage("dragon dulce.png");
    imggema5 = loadImage("gema5.png");
   
    imgcastillodentro = loadImage("castillo por dentro.png");
    imggema6 = loadImage("gema6.png");
    
    imgrelojero = loadImage("relojero.png");
    imggema7 = loadImage("gema7.png");
    
    imgpuente = loadImage("puente arcoiris.png");
    
    imgmizrabel = loadImage("mizrabel.png");
    
    //TEXTO
    title = loadFont("CopperplateGothic-Bold-48.vlw");
    //Posiciones iniciales para imágenes pantalla 0
    x1= 0;
    x2= -width; // La segunda imagen inicia "escondida"
  }
  
  
  void draw () {
    background(0);
    println(" X: " + mouseX + " Y: " + mouseY);
  
    //FONDO ANIMADO BUCLE
    image(img, x1, 0);
    image(img, x2, 0);
  
    //Las imagenes las muevo hacia la derecha
    x1 += velocidad;
    x2 += velocidad;
  
    //Condición de que cuando una imagen termina, empieza la siguiente
    if (x1 > width) {
      x1 = x2 - width ;
    }
  
    if (x2 > width) {
      x2 = x1 - width ;
    }
  
    switch (pantalla) {
      case 0:
        dibujarPantalla0();
        break;
      case 1:
        dibujarPantalla1();
        break;
      case 2:
       dibujarPantalla2();
       break;
      case 3:
        dibujarPantalla3();
        break;
      case 4:
        dibujarPantalla4(); 
        break;
      case 5:
        dibujarPantalla5(); 
        break;
      case 6:
        dibujarPantalla6(); 
        break;
      case 7:
        dibujarPantalla7(); 
        break;
        case 8:
          dibujarPantalla8(); 
          break;
       case 9:
          dibujarPantalla9(); 
          break;
       case 10:
              dibujarPantalla10(); 
              break;
              
     }
   
    if(pantalla > 0 && pantalla < 10) {
      actualizarTransicion();
    }
  
    println(pantalla);
  
  }
  
  void actualizarTransicion() {
    if (millis() - tiempoInicioPantalla > duracionPantalla) {
      pantalla = pantalla + 1;
      tiempoInicioPantalla = millis();
      resetearAnimacion();
    }
  }
  
  void resetearAnimacion() {
    y = 480;       
    opacidad = 0;  
    opacidadRect1 = 0;
  }
  
  void dibujarPantalla0() {
  
    noTint();
    image(imgMickeyMouse, 210, 170, 250, 250);
  
    //título de la pantalla
    textAlign(CENTER);
    textFont (title);
    fill(255, opacidad);
    textSize(48);
    text("The Castle of Illusion", width/2, 90);
  
    //botón start
    colorMode(RGB);
    fill(69, 90, 180, opacidad);
    rect(280, 435, 120, 40, 28);
    fill(255, opacidad);
    textSize(14);
    text("START", 340, 460);
  }
  
  
  
  void dibujarPantalla1() {
    tint(255, opacidad);
    image(imgminniecapturada, 80, y, 480, 250);
    noTint();
  
    if (y > 230) {
      y = y - 3; //animación para que suba la imagen
    }
  
  
  
    if (opacidad < 255) {
      opacidad = opacidad + decOpacity;
    }
  
  //rectángulo con texto
  if (opacidad < 255) {
      opacidad = opacidad + decOpacity;
    }
  if (opacidadRect1 < 120) {
      opacidadRect1 = opacidadRect1 + 2; 
    }
  
  fill(162,155,155,opacidadRect1);
  rect(16, 13, 600, 140, 28);
  
  fill(255,opacidad);
  textSize(14);
    text("The Castle of Illusion (2013) es un juego en el que Mickey Mouse debe", 315, 35);
    text("salvar a Minnie de la Bruja Mizrabel que apareció cuando esta pareja", 305, 55);
    text("compartía un picnic en el bosque. Para poder salvar a Minnie, Mickey debe", 315, 75);
     text("acabar con distintos jefes y encontrar 7 diamantes para construir un", 300, 95);
      text("puente arcoíris que lo lleve a la torre donde se encuentra la bruja con", 310, 115);
      text("su amada Minnie.", 85, 135);
  
  } //CIERRA LLAVE DE LA PRIMERA PANTALLA
  
  void dibujarPantalla2() {
  tint(255, opacidad);
    image(imgroble, 0, y, 280, 250);
    image(imggema1, 291, y, 90,90);
    noTint();
  
    if (y > 280) {
      y = y - 2; //animación para que suba la imagen
    }
  
  
  
    if (opacidad < 255) {
      opacidad = opacidad + decOpacity;
    }
  //rectángulo con texto
  if (opacidad < 255) {
      opacidad = opacidad + decOpacity;
    }
  if (opacidadRect1 < 120) {
      opacidadRect1 = opacidadRect1 + 2; 
    }
  //RECTÁNGULO SUPERIOR
  fill(55, 65, 32,opacidadRect1);
  rect(16, 13, 600, 70, 28);
  //RECTÁNGULO INFERIOR
  fill(55, 65, 32,opacidadRect1);
  rect(400, 276, 234, 140, 28);
  
  fill(255,opacidad);
  textSize(14);
    //texto superior
    text("Para conseguir el primer diamante conocido como Gema Roja, Mickey", 310, 26);
    text("debe acabar con El Viejo Roble quien habita El bosque encantado,lleno", 310, 46);
  text("de árboles vivientes y setas gigantes.",174, 66);
  //texto inferior
  text("El Viejo Roble(The Old", 510, 290);
  text( "Oak)es un tronco gigante",510,310);
  text(" que rueda y golpea el suelo.", 515, 330);
  text("Para derrotarlo, Mickey",510,350);
  text("tiene que saltar sobre su",510,370);
  text("cabeza o tirarle manzanas.",510,390);
  
  } //CIERRA LLAVE DE LA SEGUNDA PANTALLA
  
  
  void dibujarPantalla3(){
  
  tint(255, opacidad);
    image(imgpayaso, 0, y, 280, 250);
    image(imggema2, 291, y, 90,90);
    noTint();
  
    if (y > 280) {
      y = y - 2; //animación para que suba la imagen
    }
  
  
  
    if (opacidad < 255) {
      opacidad = opacidad + decOpacity;
    }
  //rectángulo con texto
  if (opacidad < 255) {
      opacidad = opacidad + decOpacity;
    }
  if (opacidadRect1 < 120) {
      opacidadRect1 = opacidadRect1 + 2; 
    }
  //RECTÁNGULO SUPERIOR
  fill(27, 71, 101,opacidadRect1);
  rect(16, 13, 600, 70, 28);
  //RECTÁNGULO INFERIOR
  fill(27, 71, 101,opacidadRect1);
  rect(400, 276, 234, 180, 28);
  
  fill(255,opacidad);
  textSize(14);
    //texto superior
    text("Para conseguir la gema naranja, Mickey debe derrotar al Payaso que", 314, 26);
    text("se encuentra en El Mundo de los juguetes,compuesto de cubos de letras",314, 46);
    text("soldados de plomo y payasos.",136, 66);
  
  //texto inferior
  text("El Payaso (Jack in the", 510, 290);
  text( "Box) posee un resorte que",507,310);
  text("sale de una caja de música.", 515, 330);
  text("Para que Mickey acabe con",510,350);
  text("este jefe, tiene que evitar",510,370);
  text("sus saltos,rebotar sobre",510,390);
  text("su cabeza o lanzarle varios",515,410);
  text("proyectiles.",455,430);
  
  } //CIERRA LLAVE DE LA TERCER PANTALLA
  
  
  void dibujarPantalla4(){
    
  tint(255, opacidad);
    image(imgsireno, 0, y, 280, 250);
    image(imggema3, 291, y, 90,90);
    noTint();
  
    if (y > 280) {
      y = y - 2; //animación para que suba la imagen
    }
  
  
  
    if (opacidad < 255) {
      opacidad = opacidad + decOpacity;
    }
  //rectángulo con texto
  if (opacidad < 255) {
      opacidad = opacidad + decOpacity;
    }
  if (opacidadRect1 < 120) {
      opacidadRect1 = opacidadRect1 + 2; 
    }
  //RECTÁNGULO SUPERIOR
  fill(50, 87, 57,opacidadRect1);
  rect(16, 13, 600, 70, 28);
  //RECTÁNGULO INFERIOR
  fill(50, 87, 57,opacidadRect1);
  rect(400, 276, 234, 200, 28);
  
  fill(255,opacidad);
  textSize(14);
    //texto superior
    text("En el mundo llamado La Tormenta, Mickey tiene que derrotar al Sireno", 314, 26);
    text("que se encuentra en este lugar lleno de ruinas antiguas y plataformas",314, 46);
    text("flotantes para conseguir la gema amarilla.",200, 66);
  
  //texto inferior
  text("El Sireno (The Water", 510, 290);
  text( "Dragon) es una serpiente",507,310);
  text("marina que surge de los", 500, 330);
  text("remolinos.",445,350);
  text("Para derrotar a este jefe",510,370);
  text("Mickey debe esperar a que",510,390);
  text("el Sireno salga a la super_",510,410);
  text("ficie y así saltar encima",500,430);
  text("de su cabeza.",455,450);
  
  
  } //CIERRA LLAVE DE LA CUARTA PANTALLA
  
    void dibujarPantalla5(){
  
    tint(255, opacidad);
    image(imgsombra, 0, y, 280, 250);
    image(imggema4, 282, y, 90,90);
    noTint();
  
    if (y > 280) {
      y = y - 2; //animación para que suba la imagen
    }
  
  
  
    if (opacidad < 255) {
      opacidad = opacidad + decOpacity;
    }
  //rectángulo con texto
  if (opacidad < 255) {
      opacidad = opacidad + decOpacity;
    }
  if (opacidadRect1 < 120) {
      opacidadRect1 = opacidadRect1 + 2; 
    }
  //RECTÁNGULO SUPERIOR
  fill(50, 50, 50,opacidadRect1);
  rect(16, 13, 600, 50, 28);
  //RECTÁNGULO INFERIOR
  fill(50, 50,50,opacidadRect1);
  rect(400, 276, 240, 200, 28);
  
  fill(255,opacidad);
  textSize(14);
    //texto superior
    text("Para conseguir la gema verde, Mickey Mouse debe combatir contra su", 314, 26);
    text("sombra. Esto sucede en un mundo que se basa en una biblioteca gigante.",308, 46);
   
  
  //texto inferior
  text("La forma de que Mickey", 510, 290);
  text( "pueda acabar con su sombra",519,310);
  text("es esquivando la manzana", 510, 330);
  text("gigante que empuja la sombra",519,350);
  text("hacia Mickey.Cuando él esqui_",519,370);
  text("eve ese ataque el impacto ha_",519,390);
  text("rá que tropiece la sombra y",515,410);
  text("suelte la gema verde.",490,430);
  
  
   } //CIERRA LLAVE DE LA QUINTA PANTALLA
   
   
  void dibujarPantalla6(){
  
   tint(255, opacidad);
    image(imgdragon, 0, y, 280, 250);
    image(imggema5, 291, y, 90,90);
    noTint();
  
    if (y > 280) {
      y = y - 2; //animación para que suba la imagen
    }
  
    if (opacidad < 255) {
      opacidad = opacidad + decOpacity;
    }
  //rectángulo con texto
    if (opacidad < 255) {
      opacidad = opacidad + decOpacity;
    }
    if (opacidadRect1 < 120) {
        opacidadRect1 = opacidadRect1 + 2; 
      }
    //RECTÁNGULO SUPERIOR
    fill(99, 36, 34,opacidadRect1);
    rect(16, 13, 600, 90, 28);
    //RECTÁNGULO INFERIOR
    fill(99, 36, 34,opacidadRect1);
    rect(400, 276, 234, 200, 28);
    
    fill(255,opacidad);
    textSize(14);
    //texto superior
    text("Para que Mickey pueda obtener la gema celeste, debe acabar con el", 300, 26);
    text("Dragón de Dulce que se encuentra en el Mundo Dulce compuesto por",300, 46);
    text("mares de café , ríos de nata, botellas de leche gigantes , terrones de",300, 66);
     text("azúcar y bloques de gelatina.",143, 86);
  
    //texto inferior
    text("El Dragón de Dulce(The", 515, 290);
    text( "Candy Dragon)es un dragón",515,310);
    text("hecho de caramelos y rega_", 515, 330);
    text("liz. Para derrotarlo Mickey",515,350);
    text("debe esperar a que golpee",510,370);
    text("el centro de la plataforma",515,390);
    text("y salte.Luego debe saltar",510,410);
    text("sobre su cabeza repetida_",510,430);
    text("mente.",430,450);
  
  
  } //CIERRA LLAVE DE LA SEXTA PANTALLA
  
  
   void dibujarPantalla7(){
  
     tint(255, opacidad);
    image(imgcastillodentro, 13, y, 280, 250);
    image(imggema6, 355, y, 270,250);
    noTint();
  
    if (y > 240) {
      y = y - 2; //animación para que suba la imagen
    }
  
    if (opacidad < 255) {
      opacidad = opacidad + decOpacity;
    }
  //rectángulo con texto
    if (opacidad < 255) {
      opacidad = opacidad + decOpacity;
    }
    if (opacidadRect1 < 120) {
        opacidadRect1 = opacidadRect1 + 2; 
      }
    //RECTÁNGULO SUPERIOR
    fill(13, 12, 50,opacidadRect1);
    rect(16, 13, 600, 70, 28);
   
    
    fill(255,opacidad);
    textSize(14);
    //texto superior
    text("Para que Mickey pueda obtener la gema azul , tiene que visitar el", 300, 26);
    text("castillo el cual contiene armaduras(que se mueven y atacan),lava y en_",310, 46);
    text("contrar la zona de cofres con monedas de oro.",215, 66);
    
   } //CIERRA LLAVE DE LA SÉPTIMA PANTALLA
   
   
   void dibujarPantalla8(){
   tint(255, opacidad);
    image(imgrelojero, 0, y, 280, 250);
    image(imggema7, 282, y, 90,90);
    noTint();
  
    if (y > 280) {
      y = y - 2; //animación para que suba la imagen
    }
  
  
  
    if (opacidad < 255) {
      opacidad = opacidad + decOpacity;
    }
  //rectángulo con texto
  if (opacidad < 255) {
      opacidad = opacidad + decOpacity;
    }
  if (opacidadRect1 < 120) {
      opacidadRect1 = opacidadRect1 + 2; 
    }
  //RECTÁNGULO SUPERIOR
  fill(29, 12, 33,opacidadRect1);
  rect(16, 13, 600, 50, 28);
  //RECTÁNGULO INFERIOR
  fill(29, 12, 33,opacidadRect1);
  rect(400, 276, 240, 200, 28);
  
  fill(255,opacidad);
  textSize(14);
    //texto superior
    text("Para conseguir la gema violeta, Mickey Mouse debe combatir contra El", 314, 26);
    text("Relojero quien está ubicado en la torre del reloj del castillo.",275, 46);
   
  
  //texto inferior
  text("El Relojero o también", 510, 290);
  text( "conocido como El jorobado",515,310);
  text("Relojero Torpe posee un", 510, 330);
  text("martillo gigante el cual",510,350);
  text("Mickey tiene que esquivar.",510,370);
  text("Además tiene que hacer el",510,390);
  text("salto con rebote en su",495,410);
  text("cabeza cuando el Relojero",510,430);
  text("se estrella contra el fondo.",515,450); 
   
   
  } // CIERRA LLAVE DE LA OCTAVA PANTALLA
  
  
   void dibujarPantalla9(){
   
     tint(255, opacidad);
    image(imgpuente, 80, y, 480, 250);
    noTint();
  
    if (y > 230) {
      y = y - 3; //animación para que suba la imagen
    }
  
  
  
    if (opacidad < 255) {
      opacidad = opacidad + decOpacity;
    }
  
  //rectángulo con texto
  if (opacidad < 255) {
      opacidad = opacidad + decOpacity;
    }
  if (opacidadRect1 < 120) {
      opacidadRect1 = opacidadRect1 + 2; 
    }
  
  fill(114, 78, 134,opacidadRect1);
  rect(16, 13, 600, 70, 28);
  
  fill(255,opacidad);
  textSize(14);
    text("Una vez recolectadas todas las gemas Mickey puede construir el puente", 315, 35);
    text("arcoíris que lo lleva a la torre del castillo en la que está Mizrabel junto", 315, 55);
    text("a Minnie.", 60, 75);
     
     
  } //CIERRA LLAVE DE LA NOVENA PANTALLA
  
  void dibujarPantalla10(){
   tint(255, opacidad);
    image(imgmizrabel, 0, y, 345, 300);
    noTint();
  
    if (y > 180) {
      y = y - 2; //animación para que suba la imagen
    }
  
  
  
    if (opacidad < 255) {
      opacidad = opacidad + decOpacity;
    }
  
  //rectángulo con texto
  if (opacidad < 255) {
      opacidad = opacidad + decOpacity;
    }
  if (opacidadRect1 < 120) {
      opacidadRect1 = opacidadRect1 + 2; 
    }
  
  fill(39, 39, 51,opacidadRect1);
  rect(16, 13, 600, 90, 28);
  
  fill(255,opacidad);
  textSize(14);
    text("Mickey Mouse al entrar a la torre tiene que derrotar a la bruja", 300, 35);
    text("Mizrabel quien se convierte en Maléfica a través de un hechizo.", 280, 55);
    text("Para poder salvar a Minnie, Mickey debe esquivar sus hechizos y rebo_", 300, 75);
     text("tar sobre su cabeza cada vez que Maléfica descienda para atacarlo.", 305, 95);
    
     
   //botón restart
    colorMode(RGB);
    fill(69, 90, 180, opacidad);
    rect(280, 435, 120, 40, 28);
    fill(255, opacidad);
    textSize(14);
    text("RESTART", 340, 460);
  }
  
  
  
  
  
  //PARA BOTÓN START Y RESTART. 
  
  void mousePressed() {
    if (pantalla == 0) {
     
   
      if (mouseX > 282 && mouseY > 437 && mouseX < 400 && mouseY < 470) {
     
       
        pantalla++;
        y = 480;
        tiempoInicioPantalla = millis();
        opacidad = 0;      
        opacidadRect1 = 0;
     
    }
    }
       if (pantalla == 10) { 
      
   
      if (mouseX > 282 && mouseY > 437 && mouseX < 400 && mouseY < 470) {
     
       
        pantalla++;
        y = 480;
        tiempoInicioPantalla = millis();
        opacidad = 0;      
        opacidadRect1 = 0;}
       reiniciarPresentacion();
  }
    
  } //CIERRA LLAVE DE MOUSE
  
  void reiniciarPresentacion() {
    pantalla = 0;
    tiempoInicioPantalla = millis();
    resetearAnimacion();
    opacidad = 255; 
    opacidadRect1 = 0;
  }
