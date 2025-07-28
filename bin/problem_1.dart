import 'dart:io';

void main()
{
  var array = ['jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul', 'aug', 'sep', 'oct', 'nov', 'dec'];
 // for (int i = 0; i < array.length; i++)
 // {
 //   print('month = ${array[i]}');
//  }
  print('Enter a number from 0 to 11:');
  int ? index = int.tryParse(stdin.readLineSync()!)!;

  print('Month = ${array[index]}');
}