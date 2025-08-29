main(){

  //without function
   double length1 = 0.5;
   double width1 = 10.5;
   double area1 = length1*width1;
   print("area 1 = $area1");



   double length2 = 2.5;
   double width2 = 10.5;
   double area2 = length2*width2;
   print("area 2 = $area2");



   double length3 = 5.5;
   double width3 = 10.5;
   double area3 = length3*width3;
   print("area 3 = $area3");


   //with function

  calculate();

   print('-----------------------');

 print('with normal function');
  print('area1 with function ${calculation(0.5, 10.5)}');
   print('area1 with function ${calculation(2.5, 10.5)}');
   print('area1 with function ${calculation(5.5, 10.5)}');

   print('-----------------------');

   print('with arrow function');
   print('area1 with function ${calculated(0.5, 10.5)}');
   print('area1 with function ${calculated(2.5, 10.5)}');
   print('area1 with function ${calculated(5.5, 10.5)}');

   print('-----------------------');

   print('with optional perameter');
    calculate_optional_perameter(0.5, 10.5, 'dhaka');
   calculate_optional_perameter(2.5, 10.5);
   calculate_optional_perameter(5.5, 10.5, 'mirpur');

}

 calculate(){
  print('hello');
}

double calculation(double length, double width){
  double area = length * width;
  return area;

}

//limda(arrow function)

var calculated = (double length, double width) => (length*width);

calculate_optional_perameter (double length, double width,[String ? location]){
  double area = length * width;
  if(location != null){
print('location: $location area : $area');
  }
  else{
    print('area: $area');
  }
}
