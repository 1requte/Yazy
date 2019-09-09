class Roller {
  
  ArrayList<Die> dice;
  UIRoller ui;
  
  Roller() {
    dice = new ArrayList();
  }

  void AddDie(Die _die) {
    dice.add(_die);
  }
  
  void RollDice() {
    for(int i = dice.size()-1; i >= 0; i--) {
      dice.get(i).Roll();
      dice.get(i).SetLastDrop(0, 0);
      dice.remove(i);
    }
  }
  
  void SetUI(UIRoller _uiroller) {
    ui = _uiroller;
  }
  
  UIRoller GetUI() {
    return ui;
  }
  
  ArrayList<Die> GetDice() {
    return dice;
  }

}
