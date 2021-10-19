import 'package:flutter/material.dart';
import 'package:gpeex_app/src/models/usuario.dart';
import 'package:gpeex_app/src/resources/login_api_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShowTextPage extends StatefulWidget {
  static String tag = 'show-nombre-page';

  @override
  ShowTextState createState() => ShowTextState();
}

class ShowTextState extends State<ShowTextPage> {
  String? nombrePersona = "Sebastian";
  getValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringValue = prefs.getString('nombre');

    setState(() {
      nombrePersona = stringValue;
    });

    return stringValue;
  }

  final loginApiProvider = LoginApiProvider();
  late Future<UsuarioModel> futureUser;
  late Future<String> nombre;
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
          child: Text(nombrePersona!),
          // child: FutureBuilder<String>(
          //   future: nombre,
          //   builder: (context, snapshot) {
          //     if (snapshot.hasData) {
          //       return Text(snapshot.data!);
          //     } else if (snapshot.hasError) {
          //       return Text('${snapshot.error}');
          //     }

          //     // By default, show a loading spinner.
          //     return const CircularProgressIndicator();
          //   },
          // ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    getValues();
    //futureUser = loginApiProvider.login();
  }
}
