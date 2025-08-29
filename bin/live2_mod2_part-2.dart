main(){
  Set<String> names = {'alif' ,'hamim'};
  Set<String> names2 = {'alif' ,'hamim' ,'tazim'};

  print(names);
  names.add('bin');
  names.add('saudh');
  print(names);
  print(names.elementAt(2));
  print(names.length);
  print('Result is : ${names.intersection(names2)}');
  print('Result is : ${names.union(names2)}');
}
