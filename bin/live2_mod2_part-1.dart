main(){
  //key value pair
  //each value is connected with key
  //both key and value any type

  Map<String,String> person = {
    "name" : "alif",
    "age" : "23",
    "address" : 'narayanganj-dhaka',
    'exp' : '1 year'
  };
  print(person);
  print("what's your name ?");
  print(person['age']);
  print("what's your name ?");
  print('name is : ${person['name']}');
  print("what's your address ?");
  print(person['address']);
  person['address'] = 'savar-dhaka';
  print('my current address = ${person['address']}');
  print(person);
  person.remove('exp');
  print(person);

  Map<String,String> information = {
    "id" : "cs-2203066",
    "email" : "alifhamim50@gmail.com"
  };
  person.addAll(information);
  print(person);
  print(person.runtimeType);

  var keyList = person.keys.toList();
  print(keyList);

  var keyValues = person.values.toList();
  print(keyValues);

  Map person2 = {
    "name" : "hamim",
    "age" : 24,
    "salary" : 2400.500,
    'marreid' : false
  };

  print(person2);
  print(person2.runtimeType);
}