import 'package:flutter/foundation.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends BaseViewModel {
  bool _obscureText = true;
  bool get obscureText => _obscureText;

  TextEditingController _ctrlEmail = TextEditingController();
  TextEditingController get ctrlEmail => _ctrlEmail;

  TextEditingController _ctrlPass = TextEditingController();
  TextEditingController get ctrlPass => _ctrlPass;

  toggle() {
    _obscureText = !_obscureText;
    notifyListeners();
  }

  Future login({@required String email, @required String password}) async {
    print('Email: $email');
    print('Password: $password');
  }
}
