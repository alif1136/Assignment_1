import 'live2_mod4_part-2.dart';

main(){
  String studentname = 'rahim';
  String studentclass = 'class-10';
  String studentaddress = 'dhaka';

  String studentname2 = 'fahim';
  String studentclass2 = 'class-10';
  String studentaddress2 = 'mirpur';

  String studentname3 = 'tazim';
  String studentclass3 = 'class-10';
  String studentaddress3 = 'dhaka';

  String studentname4 = 'tamim';
  String studentclass4 = 'class-10';
  String studentaddress4 = 'dhaka';

  //with class

  // create object
  student student1 = student();
  student1.studentname = 'rahim';
  student1.studentclass = 'class-10';
  student1.studentaddress = 'dhaka';


  print(student1.studentname);
  print(student1.studentclass);
  print(student1.studentaddress);

  // create new object for human class

  human alif = human();

  print(alif.legs);
  print(alif.name);
  print(alif.hands);
  alif.moving();
  alif.more();

  print(human.classname);

  human.Staticmathod();

}
class student{
  String ? studentname;
  String ? studentclass;
  String ? studentaddress;

}
