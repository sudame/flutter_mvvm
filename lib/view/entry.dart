import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Entry extends StatelessWidget {
  Entry({@required this.child});

  Widget child;

  Future<void> _init() async {}

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        home: FutureBuilder(
          future: _init(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return child;
            } else {
              return Scaffold(
                body: Center(
                  child: Text('SPLASH SCREEN'),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
