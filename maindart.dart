import 'dart:io';
void main()
{
  print("Do you want to enter the system? (yes/no): ");
  String? input = stdin.readLineSync();
  bool isConfirmed = input?.toLowerCase() == 'yes';
  if (!isConfirmed)
  {
    print("Access denied...!!!!");
    return;
  }
  print('Enter your user name:');
  String? userName = stdin.readLineSync();
  print('Enter your email address:');
  String? email = stdin.readLineSync();
  print('Enter your password:');
  String? password = stdin.readLineSync();
  if (userName?.isNotEmpty == true &&
      email?.isNotEmpty == true &&
      password?.isNotEmpty == true)
  {
    if (userName == 'Alif_1136' &&
        email == 'alifhamim50@gmail.com' &&
        password == '@liF1844')
    {
      print('✅ Login successful! \nThanks for Login....!!!');
      print("Enter your wallet amount:");
      int wallet = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
      print('Your wallet fund: $wallet');
      if (wallet <= 100)
      {
        print("You have to eat vat ");
        if (wallet >= 80)
        {
          print("You can eat fish and vat ");
        }
      } else if (wallet > 100 && wallet <= 300)
      {
        print("You can eat biriyani");
        if (wallet >= 180)
        {
          print("You can eat kacchi biriyani");
          if (wallet >= 240)
          {
            print("You can eat basmati rice kacchi");
            if (wallet == 300)
            {
              print("You can eat handy biriyani");
            }
          }
        }
      }
      else
      {
        print("You can eat whatever you want");
      }
    }
    else
    {
      if (userName == 'Alif_1136' &&
          email != 'alifhamim50@gmail.com' &&
          password == '@liF1844')
      {
        print('Username and password is correct..! Try correct email');
      }
      else if (userName == 'Alif_1136' &&
          email == 'alifhamim50@gmail.com' &&
          password != '@liF1844')
      {
        print('Username and email is correct..! Try correct password');
      }
      else if (userName != 'Alif_1136' &&
          email == 'alifhamim50@gmail.com' &&
          password == '@liF1844')
      {
        print('Password and email is correct..! Try correct userName');
      }
      else if (userName != 'Alif_1136' &&
          email != 'alifhamim50@gmail.com' &&
          password == '@liF1844')
      {
        print('Password is correct..! Try correct Username and email');
      }
      else if (userName == 'Alif_1136' &&
          email != 'alifhamim50@gmail.com' &&
          password != '@liF1844')
      {
        print('Username is correct..! Try correct email and password');
      }
      else if (userName != 'Alif_1136' &&
          email == 'alifhamim50@gmail.com' &&
          password != '@liF1844')
      {
        print('Email is correct..! Try correct username and password');
      }
      else
      {
        print('❌ Wrong info...! Try again');
      }
    }
  }
  else
  {
    print('⚠️ One or more fields were left blank. Please enter all fields.');
  }
}
