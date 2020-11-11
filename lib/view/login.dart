import 'package:flutter_mvvm/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Consumer(
                builder: (context, watch, child) {
                  final login = watch(authProvider).login;

                  return RaisedButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    child: Text('ログイン'),
                    onPressed: () => {login()},
                  );
                },
              ),
              Text('押下3秒後にログイン完了')
            ],
          ),
        ),
      ),
    );
  }
}
