class mobile{
  double _price = 12.0;
  String model = '';
  String year = '';

   mobile(this.model,this._price,this.year){
     print('creating new object');
   }

  void capturephoto(){
    print('$model is capturing photo');
  }
  void capturevideo(){
    print('$model is capturing video');
  }

 void setdeviceprice(double newprice){
     if (newprice >= 0){
       _price = newprice;
     }
     else {
       throw Exception('please try enter a valid price..!! ');
     }
 }
 double get  currentprice{
     return _price + 125;
 }
}