class car{
  String  brand;
  String  model;
  int  year;


  //class name and method name same hole oita constructor hoy
///constructor
car(this.brand,this.model,this.year){
  print('car class created');
}
  

}

main(){
  car honda = car("yamaha", 'R15', 2015);
  print(honda.model);
  student saudh = student();
  saudh.write();
  saudh.read();
}

mixin writer{
  write(){
    print("writing");
  }
}
mixin reader {
  read() {
    print("reading");
  }
}
  class student extends Object with writer, reader{

  }
