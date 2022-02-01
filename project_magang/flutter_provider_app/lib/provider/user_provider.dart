import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier{
  late String nama;
  late String noTelp;

  // untuk update data dari nama dan noTelp
  void updateProfile(BuildContext context, String _nama,String _noTelp){
    nama = _nama;
    noTelp = _noTelp;
  }
}