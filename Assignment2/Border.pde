class Border
{

  Border()
  {
  }
  
  //draws the yellow border lines around the screen
  void display()
  {
    stroke(255, 255, 0);
    
    line(30, 30, 470, 30);
    line(30, 470, 470, 470);
    line(470, 30, 470, 470);
    line(30, 30, 30, 470);
     
  }  
}