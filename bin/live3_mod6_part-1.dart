
import 'live2_mod6.dart';
class shop{
  late final String _name;
  late final String _location;
  List<mobile> _mobileList = [];


  shop(String name,String location){
    _name = name;
    _location = location;
  }
  void addNewMobile(mobile Mobile){
    _mobileList.add(Mobile);
  }
  void _removeMobile(String model){
    _mobileList.removeWhere((m) => m.model == model);
  }

  void sellmobile(String model){
    for(mobile Mobile in _mobileList){
      if(Mobile.model == model){
        double totalprice =
            Mobile.currentprice +
                ((Mobile.currentprice / 100)
                    * 15);
        print('total price of this phone is $totalprice');
        _removeMobile(model);
        return;
      }
    }
    print('mobile is not found');
  }
   }