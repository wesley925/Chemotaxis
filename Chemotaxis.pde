Bacteria [] bobs;
int x = 0;
int y = 0;

 void setup()   
 { 
   frameRate(6000);
   size (700,700);
   //background ((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
   bobs = new Bacteria [100];
   for (int i = 0; i < bobs.length; i++)
   {
     bobs[i] = new Bacteria();
   }
      
 }   
 
 void draw()   
 {    
   int bgColor = color ((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255),1);
   fill(bgColor);
   stroke(bgColor);
   rect(0,0,700,700);
   for (int i = 0; i < bobs.length; i++)
   {
     bobs[i].show();
     bobs[i].move();
   }
 }  
 void mousePressed()
 {
   redraw();
 }
 class Bacteria    
 {     
   int bacX, bacY, bacColors;
   Bacteria ()
   {
     bacX = 350;
     bacY = 350;
     bacColors = color ((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255)); 
   }
   void show()
   {
     stroke(bacColors);
     fill(bacColors);
     ellipse(bacX, bacY, 10, 10);
   }
   void move()
   {
  bacX = bacX+(int)(Math.random()*5-2.5);
  bacY = bacY+(int) (Math.random()*5-2.5);
   }
 }       