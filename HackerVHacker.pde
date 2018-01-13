//define players
Player playerOne;
Player playerTwo;


void setup()
{
  //set the canvas
  size(1400, 1000);
  background(30, 30, 50);
  
  //initialize players
  playerOne = new Player(1, color(255, 0, 0), 500, 500);
  playerTwo = new Player(2, color(0, 255, 0), 700, 700);
}
//this method loops everything within it
void draw()
{
  playerOne.drawPlayer();
  playerTwo.drawPlayer();
}

//the class for the player object
class Player
{
  //variables
  //starting coordinates of the player
  //x coordinate
  int px;
  //y coordinate
  int py;
  //color of player ellipse
  color c;
  /* assigns player a number to be used in keyPressed() to assign a set of controls
     number should only be 1 or 2 (player 1 and player 2) */
  int playerNum;
  
  //constructors
  //creates Player as a 50 x 50 ellipse at the given starting coordinates
   Player(int n, color rgb, int x, int y){
    playerNum = n;
    c = rgb;
    px = x;
    py = y;
  }
  
  //method that draws player
  void drawPlayer(){
    fill(c);
    ellipse(px, py, 100, 100);
  }
  
  //methods
  /* overrides keyPressed() to control movement
   * allows player to use WASD and IJKL controls 
   * uses assigned number from playerNum variable to assign controls so the keys don't
     effect both players
   * player 1 uses WASD
   * player 2 uses IJKL */
  void keyPressed(){
    //player 1 controls (WASD)
   // if(playerNum == 1){
      if (key == 'w'){
        py -= 10;
      }
      if (key == 'a'){
        px -= 10;
      }
      if (key == 's'){
        py += 10;
      }
      if (key == 'd'){
        px += 10;
      }
  //  }
    //player 2 controls (IJKL)
   // else if(playerNum == 2){
      if (key == 'i'){
        py -= 10;
      }
      if (key == 'j'){
        px -= 10;
      }
      if (key == 'k'){
        py += 10;
      }
      if (key == 'l'){
        px += 10;
   //   }
    }
  }
}

//the class for the block object
class Block
{
  //variables
  
  //constructors
  
  //methods
}

//the class for the node object
class Node
{
  //variables
  
  //constructors
  
  //methods
}

//the class for the goal object 
class Goal
{
  //variables
  
  //constructors
  
  //methods
}