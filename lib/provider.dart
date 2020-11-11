import 'package:flutter_mvvm/model/auth.dart';
import 'package:flutter_mvvm/repository/auth.dart';
import 'package:flutter_mvvm/viewmodel/auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Providerは全てこのファイルでグローバル変数として定義する

// repositories
AuthRepository _authRepo = AuthRepository();

// models
Auth _auth = Auth(authRepo: _authRepo);

// view models
final _authViewModel = AuthViewModel(auth: _auth);

// proviers
final authProvider =
    ChangeNotifierProvider<AuthViewModel>((ref) => _authViewModel);
