PImage miObraArquitectonica;

void setup(){
  size (800,400);
 miObraArquitectonica = loadImage("capillaplazaprosperomolina.jpg");
 
 //colorMode(RGB); //por defecto
 
 }

  void draw(){

   colorMode( RGB, 255, 255, 255 );
    background(255);
    image (miObraArquitectonica,0,0,400,400);
    //image (miObraArquitectonica,400,0,400,400);
     
        //cielo
  colorMode(RGB);
   fill(44,115,169); //azul
   noStroke();
   rect(400,0,400,140);
   fill(90,170,220);//celeste
   rect(400,140,799,139);
  
  
   //techo izquierdo superior
   fill(170,161,144); 
  noStroke();
  quad(497,229,400,228,400,222,497,208);
   
   
   
  //techo del medio
 
  fill(211,197,171); //color pared
    triangle(583,171,480,230,700,230); //techo
   fill(255);
   ellipse(583,208,30,30); //ventana
  fill(50);
  ellipse(583,208,20,20);
  stroke(70,50,31);
  strokeWeight(2);
 line(583,198,583,216);
 line(574,208,591,208);
  

 stroke(209,204,204);
  strokeWeight(14);
  line(405,233,799,233);
  line(493,214,583,165);
  line(664,209,583,165);
  stroke(170,161,144);
  stroke(74,75,74);
  line(666,84,799,84);
  stroke(74,75,74);
 strokeWeight(12);
  line(660,120,670,89);
  
   fill(211,197,171);
   noStroke();
   triangle(718,38,690,79,768,79);
   fill(80);
   ellipse(718,40,20,12);
   
   
 
   
   
   
   
   //paredes capilla
  
  stroke(74,75,74);
strokeWeight(14);
 line(670,121,670,199);

 fill(211,197,171);
 noStroke();
 rect(670,88,129,140);
 rect(401,240,400,120);
 
 
 
  //parte inferior hecha de roca pared izquierda
 fill(115, 111, 103);
  stroke(118, 111, 103);
 rect(405,361,40,18);
  
  //parte inferior hecha de roca pared del medio
  fill(115, 111, 103);
 stroke(118, 111, 103);
  rect(500,361,57,18);
rect(616,361,57,18);

 //piso
  fill(164, 159, 145);
 stroke(164, 159, 145);
  rect(556,364,109,88);
  rect(405,380,200,88);
 
 
 //techo izquierdo inferior
  
   fill(182,175,147); 
  noStroke();
 quad(498,250,400,253,400,240,495,241);
   stroke(209,204,204);
   strokeWeight(14);
   
   
 //techo derecho inferior

 stroke(182,175,147); 
  strokeWeight(9);
   line(675,242,799,242);




//ventana con cartel
 stroke(30);
 strokeWeight(5);
  line(575,244,597,243);
  line(575,270,585,270);
  line(585,270,599,270);
  line(576,248,585,248);
  line(585,248,599,248);
 stroke(70,50,31);
  strokeWeight(3);
  line(586,241,586,247);
  line(573,241,573,247);
  line(573,241,600 ,241);
  line(600,241,600,247);
  line(573,268,573,272);
  line(573,272,600,272);
  line(586,272,586,268);
  line(600,272,600,268);//ventana
  
  fill(184,198,215);
  noStroke();
  rect(560,250,52,20); //cartel
   
 
 
//columnas de torre con campana
 stroke(227,228,234);
  strokeWeight(14);
  line(675,110,675,182);
  line(700,110,700,182);
  line(766,110,766,182);
  line(791,110,791,182);
  strokeWeight(10);
  line(675,105,799,105);
  stroke(151,134,105);
  strokeWeight(5);
  line(670,190,799,190);
  line(670,190,670,226);
  line(670,226,799,226);
  line(708,182,759,182);
  line(708,182,708,188);
  line(759,182,759,188);
  
  
  //columnas lado izquierdo
  stroke(232,232,232);
  strokeWeight(13);
  line(404,258,497,258);
  line(674,258,795,258);
  strokeWeight(8);
  line(674,250,795,250 );
  strokeWeight(15);
  line(466,265,466,336);
 line(490,264,490,336);
  
  
  //columnas lado derecho
  line(680,262,683,336);
  line(702,263,706,336);
  line(787,263,792,336);
  
  
  //base de columnas lado izquierdo
  
  fill(232,232,232);
  strokeWeight(4);
  quad(453,342,473,342,473,354,443,354);
  quad(474,342,499,342,500,354,477,354);
  stroke(88,89,85);
  strokeWeight(2);
  line(440,356,499,356);
  
  fill(161,163,157);
  noStroke();
  rect(440,357,62,22); //base de roca
  
  
  //base de columnas lado derecho
  
    fill(232,232,232);
  strokeWeight(8);
  quad(674,340,700,340,700,354,666,354);
  quad(700,340,720,340,723,354,700,354);
  quad(781,340,799,340,799,354,775,354);
  stroke(88,89,85);
  strokeWeight(2);
  line(667,356,725,356);
  line(775,356,799,356);
  
  fill(161,163,157);
  noStroke();
 rect(667,357,59,22); //base de roca
 rect(775,357,59,22); //base de roca 

 
  
  //macetas
  fill(253,236,187);
  noStroke();
  ellipse(542,374,25,28);
 ellipse(660,369,10,10);
 ellipse(629,370,25,28);
 ellipse(440,389,20,20);
 stroke(31,37,18);
 strokeWeight(6);
 line(536,356,529,348);
 line(539,358,538,345);
 line(542,358,547,344);
 line(661,360,657,358);
  line(657,361,660,356);
  line(623,354,620,348);
  line(627,354,625,345);
  line(630,355,635,347);
  line(436,375,432,371);
  line(440,376,440,369);
 

 
  //maceta pared izquierda 
  fill(253,236,187);
  noStroke();
   ellipse(440,389,20,20);
   stroke(31,37,18);
 strokeWeight(6);
   line(436,375,432,371);
  line(440,376,440,369);
 
 
  
 
  
  //caja roja
  stroke(196,88,64); 
  strokeWeight(8);
  line(454,379,444,384);
  line(444,384,455,386);
  line(455,386,467,380);
  line(467,380,454,379);
  line(455,386,454,399);
  line(461,384,461,399);
  strokeWeight(6);
  line(467,380,467,399);
 line(444,384,444,399);
  
  stroke(70,82,84);
  strokeWeight(8);
  line(450,388,450,399);
  
  
  //campana
  fill(30); 
  noStroke();
  rect(718,120, 35,40,10);
 
  stroke(151,134,105);
  strokeWeight(5);
  line(720,158,720,181);
  line(750,158,750,181);
  line(720,158,750,158);
  
  
  noStroke();
  fill(139, 144, 141);
  quad(730,130,740,130,745,150,725,150);
 
 //cruces
 stroke(50);
 strokeWeight(5);
 line(584,157,583,146);
 line(576,150,592,150);
 line(716,35,716,13);
 line(708,20,728,20);
 
 //farol pequeño
 stroke(64,70,60); 
 strokeWeight(5);
 line(585,275,585,277);
 stroke(130,127,113);
 line(585,278,585,279);
 stroke(51,48,45);
 strokeWeight(4);
 line(585,282,585,285);
 
 //puerta
 fill(49,27,10);
 noStroke();
 rect(560,291,27,80,8,0,2,0);
  fill(33,36,39,220);
 rect(587,291,28,80,0,8,2,0);
 stroke(193,187,174);
 strokeWeight(2);
 line(560,372,612,372);
 line(559,294,559,372);
 

 
 
 
 //arbusto
 fill(72,72,53);
 noStroke();
 ellipse(680,385,60,40);
 ellipse(690,360,40,20);
 ellipse(703,366,20,10);
 ellipse(708,389,50,30);
 ellipse(726,375,50,20);
 ellipse(727,360,50,20);
 ellipse(730,390,150,20);
 ellipse(770,395,70,20);
 ellipse(749,377,160,20);
 ellipse(752,364,50,20);
 ellipse(794,383,50,20);
  
  
  
  
  
  //mouseX,mouseY
  fill( 0 );
  textSize( 24 );
  text( mouseX + " / " + mouseY, mouseX, mouseY );
  //
  println( mouseX + " / " + mouseY );
  
 
  
  }
