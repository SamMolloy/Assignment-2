class Collect extends Enemy
{
  
  void display()
  {

    //Drawing the enemy mode;
    noStroke();
    fill (0, 255, 0); 
    rect (randomX, randomY, 20, 20, 5);
  }//end display
   
}//end collect