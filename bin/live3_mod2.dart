import 'dart:io';
void main(){
  print("Do you want to enter the system? (yes/no): ");
  String? input = stdin.readLineSync();
  bool isConfirmed  = input?.toLowerCase() == 'yes';
  if (isConfirmed)
  {
    print('Enter your user name:');
    String ? userName = stdin.readLineSync();
    print('Enter your email address:');
    String ? email = stdin.readLineSync();
    print('Enter your password:');
    String ? password = stdin.readLineSync();
    if(userName == 'Alif_1136' && email == 'alifhamim50@gmail.com' && password == '@liF1844')
    {
      if (userName != null && email != null && password != null) {
        // now it's safe to compare with expected values
        if(userName == 'Alif_1136' && email == 'alifhamim50@gmail.com' && password == '@liF1844') {
          print('Login successful!');
        } else {
          print('Login failed!');
        }
      } else {
        print('⚠️ One or more fields were left empty. Please try again.');
      }
      print('Login successful \n Thanks for Login....!!! ');
      print("Enter your wallet amount:");
      int wallet = int.tryParse(stdin.readLineSync()!)!;
      print('Your wallet fund : $wallet');
      if (wallet <= 100)
      {
        print("you have to eat vat ");
        if (wallet >= 80 && wallet <= 100)
        {
          print("you can eat fish and vat ");
        }
      }
      else if (wallet >= 100 && wallet <= 300)
      {
        print("you can eat biriyani");
        if (wallet >= 180 && wallet <= 300)
        {
          print("you can eat kacchi biriyani");
          if (wallet >= 240 && wallet <= 300)
          {
            print("you can eat basmati rice kacchi");
            if (wallet == 300)
            {
              print("you can eat handy biriyani");
            }
          }
        }
      }
      else
      {
        print("you can eat what ever you want");
      }
    }
    else if(userName == 'Alif_1136' && email != 'alifhamim50@gmail.com' && password == '@liF1844')
    {
      print('Username and password is correct..! try correct email');
    }
    else if(userName == 'Alif_1136' && email == 'alifhamim50@gmail.com' && password != '@liF1844')
    {
      print('Username and email is correct..! try correct password');
    }
    else if(userName != 'Alif_1136' && email == 'alifhamim50@gmail.com' && password == '@liF1844')
    {
      print('password and email is correct..! try correct userName');
    }
    else if(userName != 'Alif_1136' && email != 'alifhamim50@gmail.com' && password == '@liF1844')
    {
      print('password  is correct..! try correct Username and email');
    }
    else if(userName == 'Alif_1136' && email != 'alifhamim50@gmail.com' && password != '@liF1844')
    {
      print('username is correct..! try correct email and password');
    }
    else if(userName != 'Alif_1136' && email == 'alifhamim50@gmail.com' && password != '@liF1844')
    {
      print('email is correct..! try correct username and password');
    }
    else{
      print('wrong info...! try again');
    }
  }
  else
  {
     print("Access denied...!!!!");
  }
}