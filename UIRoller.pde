class UIRoller {

  Roller roller;
  PImage sprite;
  
  UIRoller(Roller _roller) {
    roller = _roller; 
    roller.SetUI(this);
    sprite = loadImage("Assets/roller.png");
  }
  
  void draw() {
    image(sprite, 30, 100);
    
    if(mousePressed && mouseX > 30 && mouseY > 100 && mouseX < 30 + 128 && mouseY < 100 + 256 && roller.dice.size() != 0 && HAND_EMPTY) {
      roller.RollDice();
    }
    
  }
  
  Roller GetRoller() {
    return roller;
  }
  
}
