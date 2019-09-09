class Die {
  
  int sides;
  int result;
  int lastDropX;
  int lastDropY;
  boolean inRoller = false;
  Roller roller;
  
  Die(Roller _roller) {
    roller = _roller;
    SetSides(6);
    result = 1;
  }
  
  Die(int _sides) {
    SetSides(_sides);
  }
  
  int GetResult() {
    return result;
  }
  
  void SetResult(int _result) {
    result = _result;
  }
  
  int GetSides() {
    return sides;
  }
  
  void SetSides(int _sides) {
    sides = _sides;
  }
  
  void Roll() {
    SetResult((int) random(GetSides()) + 1);
  }
  
  void SetLastDrop(int _x, int _y) {
    lastDropX = _x;
    lastDropY = _y;
  }
  
  void PutInRoller() {
    GetRoller().AddDie(this);
  }
  
  void TakeOutOfRoller() {
    inRoller = false;
  }
  
  void SetRoller(Roller _roller) {
    roller = _roller;
  }
  
  Roller GetRoller() {
    return roller;
  }
  
}
