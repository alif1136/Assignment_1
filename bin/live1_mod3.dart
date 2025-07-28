// import 'dart:io';

//main()
//{
  // print("enter your day:");
  // String ? day = stdin.readLineSync();
  // switch(day){
  //   case "fri":
  //     print("relex");
  //     break;
  //   case "sat":
  //     print("versity");
  //     break;
  //     case "sun":
  //   print("gym");
  //   break;
  //   case "mon":
  //     print("movie");
  //     break;
  //     case "tue":
  //   print("fun");
  //   break;
  //   default:
  //     print("basay thakbo");
  // }
void main() {
  try {
    div();
  }
  catch (e) {
    print("not");
  }
}

  void div() {
    int a = 10;
    int b = 0;
    int result;
    result = a ~/ b; // Integer division, will throw an exception
      print("Result is $result");
    }
