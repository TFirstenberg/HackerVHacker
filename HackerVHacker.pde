import org.w3c.dom.css.Rect;
//define players
Player playerOne;
Player playerTwo;


void setup()
{
  //set the canvas
  size(1400, 1000);
  background(30, 30, 50);
  
  //initialize players
}

//this method loops everything within it
void draw()
{
}

//the class for the player object
class Player
{
  //variables
  
  //constructors
  
  //methods
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
  private int size;
  private String name;
  private boolean blockPlayer; //turns true once the matching node on the other side is activated
  private boolean isActive; //turns true when the player hits the node before the other player 
  private boolean isDead; //turns true when the second player builds to the node
  private Node pair; //the node on the other side of the screen that pairs with this one
  private int xPos;
  private int yPos;
  
  //constructors
  public Node(int nSize, String nName, Node nPair, int nX, int nY)
  {
    size = nSize;
    name = nName;
    pair = nPair;
    xPos = nX;
    yPos = nY;
    
    blockPlayer = false;
    isActive = false;
    isDead = false;
    
    rect(xPos, yPos, size, size);
  }
  
  //methods
  public boolean getIsActive()
  {
    return isActive;
  }
  
   public void setIsActive(boolean toSet)
  {
    isActive = toSet;
  }
  
  public boolean isPlayerBlocked()
  {
    return blockPlayer;
  }
  
  public void setBlockPlayer(boolean toSet)
  {
    blockPlayer = toSet;
  }
  
  public void setIsDead(boolean toSet)
  {
    isDead = toSet;
  }
  
  //handles what happens when the player collides with the node
  public void onPlayerColision()
  {
    //if isActive is false and isDead is false, activate the this node and set the other node to block the player
    if((isActive == false) && (isDead == false))
    {
      isActive = true;
      pair.setIsActive(true);
      pair.setBlockPlayer(true);
    }
  }
  
  //handles what happens when a block collides with the node
  public void onBlockCollision()
  {
    //if the node is blocking the player, turn that off and kill both nodes
    if(blockPlayer == true)
    {
      blockPlayer = false;
      isDead = true;
      pair.setIsDead(true);
    }
  }
}

//the class for the goal object 
class Goal
{
  //variables
  
  //constructors
  
  //methods
}