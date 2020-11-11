// singleton
import 'package:flutter_mvvm/model/auth.dart';

class AuthRepository {
  AuthRepository._init();

  factory AuthRepository() => _instance ??= AuthRepository._init();

  static AuthRepository _instance;

  // Repository は Model に依存 (Model層で定義した型を返す)
  Future<User> login() async {
    // 本来は外部APIと通信するが、ここではただ3秒待つ
    await Future.delayed(Duration(seconds: 3));
    return User('sato taro', 'sato_taro_id');
  }
}
