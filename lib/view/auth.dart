import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm/provider.dart';
import 'package:flutter_mvvm/view/login.dart';
import 'package:flutter_mvvm/view/private_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthView extends StatelessWidget {
  AuthView({
    @required this.privateApp,
  });

  final Widget privateApp;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        // ログイン状態を監視
        final authState = watch(authProvider);

        if (authState.authenticated == null || !authState.authenticated) {
          return LoginView(); // null container
        }
        return PrivateApp();
      },
    );
  }
}
