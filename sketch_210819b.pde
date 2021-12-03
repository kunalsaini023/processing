
    

 int val=300000;
 boolean flagn = false;
 boolean move=false;


float playerXCor =270;
int playerYCor = 270;


int speedy=3;
int speedx=3;

PImage flag;

int x1=0;
int x2=0;




void setup()
{ size(800, 600);
background(0,255,255);
fill(0,100,0);
rect(230,20,550,550);
fill(128,128,0);
rect(310,100,400,400);
fill(128,128,128);
rect(230,300,80,10);

fill(255,255,255);
rect(330,120,150,150);
rect(330,340,150,150);
rect(25,40,150,40);

flag = loadImage("flag.jpg");

image(flag,360,520);
image(flag,610,520);
image(flag,720,380);
image(flag,720,180);
image(flag,360,40);
image(flag,610,40);
fill(0);
textSize(15);
text("click for result ",30,60);
text("click on box to get num1 ",500,200);
text("click on box to get num2 ",500,400);


 
 textSize(25);
 text("RESULT ZONE ",20,20);
 text("NUMBER ZONE ",500,150);
  




movep();


}
void draw() {
  movep();
  
  fill(0,100,0);
rect(230,20,550,550);
fill(128,128,0);
rect(310,100,400,400);
fill(128,128,128);
rect(230,300,80,10);

fill(255,255,255);
rect(330,120,150,150);
rect(330,340,150,150);
rect(25,40,150,40);

fill(0);
textSize(15);
text("click for result ",30,60);
text("click on box to get num1 ",500,200);
text("click on box to get num2 ",500,400);
flag = loadImage("flag.jpg");

image(flag,360,520);
image(flag,610,520);
image(flag,720,380);
image(flag,720,180);
image(flag,360,40);
image(flag,610,40);


 
 textSize(25);
 text("RESULT ZONE ",20,20);
 text("NUMBER ZONE ",500,150);
println (mouseX +"," + mouseY);
println (playerXCor +"," + playerYCor);
println (move);
 //textSize(25);
 text(x1,400,180);
 text(x2,400,410);
  if((mouseY>(val-20) && mouseY<(val+20))&&(mouseX<130 && mouseX>30))
        {
         move=true; 
        }
       else
       {
         move=false;
       }
println (move);
drawPlayer();


 
}




    void drawPlayer(){
  
  
  fill(255,255,0);
  circle(playerXCor,playerYCor, 60);
  fill(0);
  circle((playerXCor-10),(playerYCor),10);
  circle((playerXCor+10),(playerYCor),10);
  arc((playerXCor), (playerYCor+10), 15, 10, 0, 3.14);
//line(60, 125, 140, 125);

 
}

void movep(){ 
  
 if(flagn==true)
 { if(move==true)
  {
  if((playerXCor>230 && playerXCor<310)&&(playerYCor>230))
     {  playerYCor =playerYCor+speedy ;
       if(playerXCor==270 && playerYCor==537)
           speedy=0;
     }
     if((playerYCor>500 && playerYCor<570)&&(playerXCor>260))
     {  playerXCor =playerXCor+speedx ;
      if(playerXCor==750 && playerYCor==540)
         speedx=0;
         if(playerXCor==381&&playerYCor==540)
         {flagn=false;
         fill(0,100,0);
         rect(350,500,70,70);
         
         }
        
         if(playerXCor==627&&playerYCor==540)
         flagn=false;
     }
     if((playerXCor>710 && playerXCor<780)&&(playerYCor<570&&playerYCor>60))
     {  
       speedy=3;
       playerYCor =playerYCor-speedy ;
       if(playerXCor==750&&playerYCor==375)
         flagn=false;
       if(playerXCor==750&&playerYCor==204)
         flagn=false;
     }
     
      if((playerYCor>20 && playerYCor<100)&&(playerXCor<780&&playerXCor>270))
     {  
       speedx=3;
       playerXCor =playerXCor-speedx;
        if(playerXCor==627&&playerYCor==60)
       {  flagn=false;
       fill(0,100,0);
       rect(350,500,70,70);
       } 
          if(playerXCor==381&&playerYCor==60)
         flagn=false;
     }
     if((playerXCor>230 && playerXCor<310)&&(playerYCor>30 &&playerYCor<270))
     { speedy=3; 
       playerYCor =playerYCor+speedy ;
       

     }
if((playerXCor==380&&playerYCor==540)||(playerXCor==625&&playerYCor==540)||(playerXCor==750&&playerYCor==375)||(playerXCor==750&&playerYCor==200)||(playerXCor==625&&playerYCor==60)||(playerXCor==380&&playerYCor==60))
  { flagn=false;
  }
  if((playerXCor>230 && playerXCor<310)&&(playerYCor>250 && playerYCor<270))
     { speedy=3; 
       playerYCor=playerYCor+speedy ;
       delay(500);
       fill(180,0,0);
  rect(0,0,800,600);
  textSize(40);
  fill(0);
  
  text("game over",300,300);
  noLoop();}
  }
}
}
 
void mouseClicked()
{
        speedx=3;
        speedy=3;
        if(mouseX<480 && mouseX>330)
  {if(mouseY<270 && mouseY>120)
      { fill(255);
      rect(330,120,150,150);
        x1=(int)random(101);
        fill(0);
        text(x1,400,180);
        
        
        
        
 
      }
  
}
 if(mouseX<480 && mouseX>330)
  {if(mouseY<490 && mouseY>340)
      { fill(255);
        rect(330,340,150,150);
        x2=(int)random(51);
         fill(0);
      text(x2,400,410);
       
      }
  
}
if(mouseX<175 && mouseX>25)
  {if(mouseY<80 && mouseY>40)
      { fill((int)random(255),(int)random(255),(int)random(255));
        rect(30,100,100,40);
        fill((int)random(255),(int)random(255),(int)random(255));
        rect(30,200,100,40);
        fill(255);
         val=random(1)>0.5?120:220; 
        text(x2+x1,30,val);
        while((mouseY>val-20 && mouseY<val+20)&&(mouseX<175 && mouseX>25))
        {
         move=true; 
        }
       flagn=true;
         text((int)random(x2+x1-10,x2+x1+10),30,340-val);
        
       
      }
  
}
}
