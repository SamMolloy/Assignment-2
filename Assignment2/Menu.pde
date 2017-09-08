class Menu
{  
  
  PFont font;
  Menu()
  {
  }
  
  void display()
  {
    //Strings for the stuff on the start menu
    String s1 = "Press Up Arrow to Start!";
    String s2 = "Arrow Keys to move";
    String s3 = "Collect green objects & avoid";
    String s4 = "everything else!";
    
    //loading a new font
    font = loadFont("Braggadocio-20.vlw");
    textFont(font, 20);
  
      fill(255,255,0);
      textSize(20);
      text(s1, 95, 400);
      
      fill(255,255,0);
      textSize(20);
      text(s2, 125, 100);
   
      fill(255,255,0);
      textSize(20);
      text(s3, 65, 250);
      
      fill(255,255,0);
      textSize(20);
      text(s4, 140, 275);
  }//end display()
  
}//end Menu