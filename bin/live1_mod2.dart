import 'dart:io';
main(){
  String ? name ;
  print('enter the name:');
  name = stdin.readLineSync();
  print('enter your age:');
  int ? age = int.tryParse(stdin.readLineSync()!);
  print( 'your age is: $age');
  print('name is: $name \nyour age is: $age');

//List Concept....

  List<int> numbers = [1,2,4,6,5,6];
  print(numbers);
  numbers.addAll([26,45,3]);
  print(numbers);
  numbers.add(26);
  print(numbers);
  numbers.insert(4,88);
  print(numbers);
  numbers.insertAll(6,[25,56,35,87,65]);
  print(numbers);
  numbers.sort();
  print(numbers);
  numbers.reversed;
  print('lenght is = ${numbers.length}');


  print("list number index wise: ${numbers[5]}");
  numbers[5]=55;
  print(numbers);
  numbers.remove(2);
  print(numbers);
  numbers.removeAt(5);
  print(numbers);
  numbers.removeLast();
  print(numbers);
  print('List Length:${numbers.length}');
  numbers.sort();
  print(numbers);
  print(numbers.reversed);
  print(numbers.runtimeType);
  List<dynamic> test=['dgrf',255,10,20,true];
  List test2= ['dgrf',255,10,20,true];
  print(test.runtimeType);
  print(test2.runtimeType);

}