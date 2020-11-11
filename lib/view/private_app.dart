import 'package:flutter/material.dart';
import 'package:flutter_mvvm/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PrivateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('プライベートページ'),
              Consumer(
                builder: (context, watch, child) {
                  final logout = watch(authProvider).logout;

                  return RaisedButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text('ログアウト'),
                    onPressed: logout,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
