import 'dart:async';

import 'package:flutter_mvvm/repository/auth.dart';

class User {
  User(this.name, this.id);

  final String name;
  final String id;
}

class Auth {
  // Repositoryへの依存を避けるため注入する
  Auth({AuthRepository authRepo}) : _authRepo = authRepo;

  final AuthRepository _authRepo;

  // 本来は Rx の BehaviorSubject あたりが良いと思われる
  final _userController = StreamController<User>();
  final _isLoginController = StreamController<bool>();

  Stream<User> get user => _userController.stream.asBroadcastStream();
  Stream<bool> get isLogin => _isLoginController.stream.asBroadcastStream();

  Future<void> login() async {
    final user = await _authRepo.login();
    _userController.add(User(user.name, user.id));
    _isLoginController.add(true);
  }

  Future<void> logout() async {
    _userController.add(null);
    _isLoginController.add(false);
  }
}
