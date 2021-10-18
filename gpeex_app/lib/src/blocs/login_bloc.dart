import 'package:gpeex_app/src/resources/repository.dart';
import '../models/usuario.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc {
  final _repository = Repository();
  final _loginFetcher = PublishSubject<UsuarioModel>();

  Observable<UsuarioModel> get getLogin => _loginFetcher.stream;

  loginRequest() async {
    UsuarioModel usuarioModel = await _repository.login();
    _loginFetcher.sink.add(usuarioModel);
  }

  dispose() {
    _loginFetcher.close();
  }
}

final bloc = LoginBloc();
