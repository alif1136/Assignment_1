class human{
  var legs = 2;
  var eyes = 2;
  var hands = 2;
  String ? name;
  static String classname = 'human class';

  static Staticmathod(){
    print('Static mathod');
  }
  moving(){
    print('human is moving');
  }
  more(){
    print("he is running");
  }
}
class animal{
  String type;
  animal(this.type);
  sound(){
    print('animal makes sound');
  }
}
class dog extends animal{
  dog(super.type);
   eat(){
     print('dog eating');
   }
   @override
   sound(){
     //return super.sound();
print('gau gau');
   }
}
main(){
  dog Dog = dog('german shepherd');
  Dog.sound();
  Dog.eat();
  print(Dog.type);
}