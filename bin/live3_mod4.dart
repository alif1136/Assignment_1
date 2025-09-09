// class Father {
//   String fatherName;
//   String land = '100 biga';
//   String hou = 'Tin basa';
//
//   Father(this.fatherName){
//     print('$fatherName object created');
//   }
//
//   incomeSource() {
//     print('Farming');
//   }
// }
//
// class Son extends Father {
//   String SonName;
//
//   String land = '150 bigha';
//
 // Son(this.SonName,String fatherName) : super(fatherName);
  // Son(this.SonName,super.fatherName) ;
  //
  // String fatherName = 'Rahim';
  //
  // @override
  // incomeSource() {
  //   print('Flutter developer');
  // }
// }
//
// main() {
//   Son Amit = Son('Karim','Amit');
//   print(Amit.land);
//   Amit.incomeSource();
//   print(Amit.SonName);
//
//   print(Amit.fatherName);
// }



class father{
  String name;
  String land = '100 biga';
  String hou = 'tin basa';

   father(this.name){
     print('$name object created');
   }
  incomesource(){
    print("farming");
  }
}
class son extends father{
  String sonname;
  String land = '150 biga';
 // son(this.sonname,String hou) : super(hou);
  son(this.sonname,super.hou);
@override
incomesource(){
  print('flutter developer');
  }

}

main(){
  son alif = son("amir");
  print(alif.land);
  alif.incomesource();
  print(alif.name);
}