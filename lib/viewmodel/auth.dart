import 'package:flutter/material.dart';
import 'package:flutter_mvvm/model/auth.dart';

// StateNotiferでimmutableにやっても良いが、とりあえずChangeNotiferで十分な気がする
// see: https://medium.com/flutter-jp/state-1daa7fd66b94

class AuthViewModel with ChangeNotifier {
  // ViewModelはModelに依存
  AuthViewModel({Auth auth}) : _auth = auth {
    // モデルの変更を監視
    _auth.isLogin.listen((isLogin) {
      // Viewに変更を通知
      authenticated = isLogin;
      notifyListeners();
    });
  }

  final Auth _auth;

  bool authenticated = false;

  // Viewからのアクション(login, logout)を受け取ってModelに通知
  void login() {
    _auth.login();
  }

  void logout() {
    _auth.logout();
  }
}
