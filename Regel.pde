abstract class Rule {
  String name;
  int[] requirements;
  
  Rule() {
    requirements = new int[6];
  }
  
  String GetName() {
    return name;
  }
  
  
}
