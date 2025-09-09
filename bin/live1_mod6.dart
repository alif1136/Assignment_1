import "live2_mod6.dart";
import 'live3_mod6_part-1.dart';
import 'live3_mod6_part-2.dart';
void main(){
  mobile iphoneXR = mobile("iphoneXR",12679.0,'2019');
  iphoneXR.model = 'iphoneXR';
  iphoneXR.year = '2019';
  // iphoneXR.price = '112500.00 BDT';

  iphoneXR.capturephoto();
  iphoneXR.capturevideo();

  // mobile price = mobile();
   print("model is = ${iphoneXR.model}");
   print("iphoneXR releasing year is = ${iphoneXR.year}");
   //print("iphoneXR price is = ${iphoneXR.currentprice}");

  iphoneXR.setdeviceprice(5225.56);
   //print(iphoneXR.currentprice);
  print("iphoneXR price is = ${iphoneXR.currentprice}");
  //print(iphoneXR.deviceprice);

  shop gadget = shop('iphone', 'dhaka');
  gadget.addNewMobile(iphoneXR);
  gadget.sellmobile('iphoneXR');

  tablet ipad = tablet(11, 'ipad', 1263, '2023');
  gadget.addNewMobile(ipad);

  human Student = student();
  human Engineer = engineer();
}

abstract class human{
  void eating();
  void moving();
  void breathing();
}

class student implements human{
  @override
  void eating (){
    // TODO: implement eating
    print('eating...');
  }
  @override
  void moving() {
    // TODO: implement moving
    print('moving..');
  }
  @override
  void breathing() {
    // TODO: implement breathing
    print('breathing...');
  }
}

class engineer implements human{
  @override
  void breathing() {
    // TODO: implement breathing
  }

  @override
  void eating() {
    // TODO: implement eating
  }

  @override
  void moving() {
    // TODO: implement moving
  }

}