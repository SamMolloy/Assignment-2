class Player
{
    float radius = 17, directionX = 1, directionY = 0;
    float x=250, y=450, speed=2.75;
  
  Player()
  {
  }
  
  void run()
  {
    display();
    move();
    keyPressed();
  }//end run
  
  
  void display()
  {
    //Drawing the player model
    fill (255, 255, 0); 
    ellipse (x, y, radius, radius);
  }//end display()
  
  
  void move()
  {
    //setting the players movement
    x=x+speed*directionX;
    y=y+speed*directionY; 
       
    //stopping the player form moving off the screen
    if (x > 470)
    {
      x = 30;
    }//end if
    if (y > 470)
    {   
      y = 30;
    } //end if 
    if (x < 30)
    {
      x = 470;
    }//end if
    if (y < 30)
    {   
      y = 470;
    } //end if 
  }//end move


  
  //Setting the movement controls
  void keyPressed()
  {
    if (key == CODED)
    {
      if (keyCode == LEFT)
      {     
        directionX=-1;
        directionY=0;     
      }//end LEFT
    
      else if (keyCode == RIGHT)
      {     
        directionX=1;
        directionY=0;    
      }//end RIGHT
    
      else if (keyCode == UP)
      {    
        directionY=-1;
        directionX=0;     
      }//end UP
    
      else if (keyCode == DOWN)
      {
        directionY=1;
        directionX=0;
      }//end DOWN
    }//end outer IF
  }//end keyPressed  
  
}//end Player()