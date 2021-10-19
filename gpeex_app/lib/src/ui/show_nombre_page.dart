import 'package:flutter/material.dart';
import 'package:gpeex_app/src/models/usuario.dart';
import 'package:gpeex_app/src/resources/login_api_provider.dart';

class ShowTextPage extends StatefulWidget {
  static String tag = 'show-nombre-page';

  @override
  ShowTextState createState() => ShowTextState();
}

class ShowTextState extends State<ShowTextPage> {
  final loginApiProvider = LoginApiProvider();
  late Future<UsuarioModel> futureUser;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<UsuarioModel>(
            future: futureUser,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.nombre);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    futureUser = loginApiProvider.login();
  }
}
