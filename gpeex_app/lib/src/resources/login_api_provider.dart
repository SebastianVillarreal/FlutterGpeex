import 'dart:async';
import 'package:gpeex_app/src/models/usuario.dart';
import 'package:http/http.dart' show Client;
import 'dart:convert';

class LoginApiProvider {
  Client client = Client();

  Future<UsuarioModel> login() async {
    print("funcion");
    final response = await client.post(
        Uri.parse("http://localhost:8888/GEPEX/mLogin/valida_user_api.php"),
        body: {'usuario': 'admin', 'pass': '123456789'});
    print(response.body.toString());

    if (response.statusCode == 200) {
      return UsuarioModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('failed');
    }
  }
}
