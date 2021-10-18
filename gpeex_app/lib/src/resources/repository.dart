import 'dart:async';
import 'package:gpeex_app/src/models/usuario.dart';
import 'package:gpeex_app/src/resources/login_api_provider.dart';

class Repository {
  final loginApiProvider = LoginApiProvider();

  Future<UsuarioModel> login() => loginApiProvider.login();
}
