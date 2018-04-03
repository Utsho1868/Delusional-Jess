//first layer beginning
//for the images check one drive
PImage hell;
PImage w1;
PImage w2;
PImage w22;
PImage w3;
PImage w33;
PImage w4;
PImage w5;
PImage r1;
PImage r2;
PImage r3;
PImage r4;
PImage r5;
PImage e1;
PImage e2;
//Sound Track
//Check sound track in one drive
import ddf.minim.*;
Minim minim1;
Minim minim2;
AudioPlayer groove1;
AudioPlayer groove2;

//starsRect
int x;
int z;
int y=-400;
//vertical line
int k=-100;
int p=900;
int speed=1;

void setup(){
  size(800,600);
  //sound track
  minim1 =new Minim(this);
  groove1=minim1.loadFile("main111.mp3",1024);
  groove1.play();

  minim2 =new Minim(this);
  groove2=minim1.loadFile("back.mp3",1024);
  groove2.loop();
  //volume of sound range -13 to -70
  groove2.setGain(-25);
  
  //Loading Images
  hell=loadImage("hell.JPG");
  w1=loadImage("week1111.JPG");
  w2=loadImage("week222.JPG");
  w22=loadImage("think222.JPG");
  w3=loadImage("week3.JPG");
  w33=loadImage("week333.jpg");
  w4=loadImage("week4.JPG");
  w5=loadImage("week5.JPG");
  r1=loadImage("rest1.jpg");
  r2=loadImage("rest22.jpg");
  r3=loadImage("rest44.jpg");
  r4=loadImage("rain22.jpg");
  r5=loadImage("rest5.jpg");
  e1=loadImage("end.jpg");
  e2=loadImage("thanks.jpg");
  
  frameRate(5);
}

void draw(){
  background(255);
  //Beginning
  if(frameCount>0 && frameCount<=75){
    image(hell,0,0,width,height); 
  }
  //Week1
  if(frameCount>=75 && frameCount<=305){
    image(w1,0,0,width,height);          
 } 
 //Week 2
 if(frameCount>305 && frameCount<=560){
  image(w2,0,0,width,height); 
 }
 
 //Week 3
 if(frameCount>560 && frameCount<=890){
   image(w3,0,0,width,height);
 }
 
 //week4
 if(frameCount>890 && frameCount<=1145){
   image(w4,0,0,width,height);
  
 }
 //week5
 if(frameCount>1145 && frameCount<=1290){
   image(w5,0,0,width,height);
   
 }
 //thinking
 if(frameCount>1290 && frameCount<=1400){
   image(w22,0,0,width,height);
    
 }
 //rest
 if(frameCount>1400 && frameCount<=1450){
   image(r1,0,0,width,height);
 }
 if(frameCount>1450 && frameCount<=1500){
   image(r2,0,0,width,height);
 }
 if(frameCount>1500 && frameCount<=1550){
   image(r3,0,0,width,height);
 
 }
 if(frameCount>1550 && frameCount<=1600){
   image(r4,0,0,width,height);
   
 }
 if(frameCount>1600 && frameCount<=1700){
   image(r5,0,0,width,height);
 }
 
 if(frameCount>1700 && frameCount<=1900){
   image(e1,0,0,width,height);
   
    //rectangle changing window
      stroke(0);
      strokeWeight(0);
      fill(#6F3009,150);
      rectMode(CENTER);
      rect(width/2,y,width,height);
      
      //stars point
      
      strokeWeight(5);
      //horizontal line
      //black white
      for(int x=0;x<=width;x+=30){
        //line1
        stroke(255);
        point(x,y-300);
        stroke(0);
        point(x,y-295);
        //line2
        stroke(255);
        point(x,y-270);
        stroke(0);
        point(x,y-265);
        //line3
        stroke(255);
        point(x,y-240);
        stroke(0);
        point(x,y-235);
        //line4
        stroke(255);
        point(x,y-240);
        stroke(0);
        point(x,y-235);
    }
    //verical line left
    for(int e=5;e<=height;e+=20){
      //line1
       //stroke(255);
       //point(k,e);
       //stroke(0);
       //point(k-5,e);
      //line2
      //stroke(255);
      // point(k-20,e);
      // stroke(0);
      // point(k-25,e);
      //line3
      stroke(255);
       point(k-40,e);
       stroke(0);
       point(k-45,e);
      //line4
       //stroke(255);
       //point(k-60,e);
       //stroke(0);
       //point(k-65,e);
      //line5
       stroke(255);
       point(k-80,e);
       stroke(0);
       point(k-85,e);
       //line6
       //stroke(255);
       //point(k-100,e);
       //stroke(0);
       //point(k-105,e);
       //line7
       stroke(255);
       point(k-120,e);
       stroke(0);
       point(k-125,e);
      
    }
    //vertical line right
    for(int f=5;f<=height;f+=20){
       //line1
       stroke(255);
       point(p,f);
       stroke(0);
       point(p-5,f);
       //line2
       stroke(255);
       point(p+40,f);
       stroke(0);
       point(p+45,f);
       //line3
       stroke(255);
       point(p+80,f);
       stroke(0);
       point(p+85,f);
    
    }

     //moving down the colored screen
    if(y<300){
        y+=speed*5;
      }
   //Verical line left movement
    if(k<132){
      k+=speed*2;
    }
   //Vertical line right movement
   if(p>703){
      p+=speed*-2;
   }  
  
 }
   if(frameCount>1900){
     image(e2,0,0,width,height);
   }
}

//void mouseClicked(){
//  print("X: ");
//  println(mouseX);
//  print("Y: ");
//  println(mouseY);
//}