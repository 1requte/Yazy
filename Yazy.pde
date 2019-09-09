Roller rollerTest = new Roller();
Die die1 = new Die(rollerTest);
Die die2 = new Die(rollerTest);
Die die3 = new Die(rollerTest);
Die die4 = new Die(rollerTest);
Die die5 = new Die(rollerTest);
Die die6 = new Die(rollerTest);
UIRoller rollerUI;
UIDie die1_UI;
UIDie die2_UI;
UIDie die3_UI;
UIDie die4_UI;
UIDie die5_UI;
UIDie die6_UI;

void setup() {
  size(800, 600);
  rollerTest.RollDice();
  
  rollerUI = new UIRoller(rollerTest);
  die1_UI = new UIDie(die1);
  die2_UI = new UIDie(die2);
  die3_UI = new UIDie(die3);
  die4_UI = new UIDie(die4);
  die5_UI = new UIDie(die5);
  die6_UI = new UIDie(die6);
}

void draw() {
  background(250, 250, 250);
  rollerUI.draw();
  die1_UI.draw(200, 340);
  die2_UI.draw(250, 340);
  die3_UI.draw(300, 340);
  die4_UI.draw(200, 390);
  die5_UI.draw(250, 390);
  die6_UI.draw(300, 390);
}
