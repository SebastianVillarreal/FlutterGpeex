class UsuarioModel {
  String _id = "";
  String _nombre = "";
  String _perfil = "";
  String _idPerfil = "";

  UsuarioModel.fromJson(Map<String, dynamic> parsedJson) {
    print(parsedJson["Persona"]);
    _id = parsedJson["Id"];
    _nombre = parsedJson["Persona"];
    _perfil = parsedJson["Perfil"];
    _idPerfil = parsedJson["IdPerfil"];
  }

  String get id => _id;
  String get idPerfil => _idPerfil;
  String get nombre => _nombre;
  String get perfil => _perfil;
}
