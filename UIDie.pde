static boolean HAND_EMPTY = true;

class UIDie {
  
  Die die;
  PImage sprite;
  boolean pickedUp;
  float lastDropX;
  float lastDropY;
  int spriteResult;
  
  UIDie (Die _die) {
    die = _die;
    spriteResult = 1;
    sprite = loadImage("Assets/die" + spriteResult +".png");
  }
  
  void draw(int _x, int _y) {
    
    if(!die.GetRoller().dice.contains(die)) {
      if(!IsPickedUp()) {
        image(sprite, _x, _y);
      } else {
        image(sprite, mouseX-16, mouseY-16);
      }
    }
    
    if(mousePressed) {
      if(!IsPickedUp() && mouseX > _x && mouseY > _y && mouseX < _x + 32 && mouseY < _y + 32 && HAND_EMPTY) {
        PickUp(true);
        HAND_EMPTY = false;
      }
    } else {
      if(!HAND_EMPTY && IsPickedUp()) {
        HAND_EMPTY = true;
        die.SetLastDrop(mouseX, mouseY);
      }
      PickUp(false);
    }
    
    
    if(die.lastDropX > 30 && die.lastDropY > 100 && die.lastDropX < 30 + 128 && die.lastDropY < 100 + 256) {
      die.PutInRoller();
    }
    
    if(die.GetResult() != spriteResult) {
      spriteResult = die.GetResult();
      sprite = loadImage("Assets/die" + spriteResult +".png");      
    }
    
  }
  
  void PickUp(boolean _pickedUp) {
    pickedUp = _pickedUp;
  }
  
  boolean IsPickedUp() {
    return pickedUp;
  }
  
}
