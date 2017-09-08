class Die
{
  int lives = 5;
  Die()
  {
  }
  
  void display()
  {
    String s1 = "Lives: " + lives;
    
      fill(255,255,0);
      textSize(18);
      text(s1, 50, 490);
  }
  
  //checks for collision between the player and all the enemy objects and deducts a life if it hits
  void collide()
  {
      for (int i = 0; i < enemies.size(); i++) 
      {
        float distance = dist(player.x, player.y, enemies.get(i).randomX, enemies.get(i).randomY);
        if(distance <= 20)
        {
          enemies.get(i).randomX = random(40, 460);
          enemies.get(i).randomY = random(40, 460);
           lives --;
        }//end if
      }//end for   

  }//end collide
  
  
  //Game over splash screen for when lives hit 0
  void GameOver()
  {
      background(255,0,0);
      String s1 = "Game Over";
    
      fill(0);
      textSize(40);
      text(s1, 100, 200);

  }
  
  
}