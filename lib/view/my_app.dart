import 'package:flutter/cupertino.dart';
import 'package:flutter_mvvm/view/auth.dart';
import 'package:flutter_mvvm/view/entry.dart';
import 'package:flutter_mvvm/view/private_app.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Entry(
      child: AuthView(
        privateApp: PrivateApp(),
      ),
    );
  }
}
