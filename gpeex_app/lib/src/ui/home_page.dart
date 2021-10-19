import 'package:flutter/material.dart';
import 'package:gpeex_app/src/ui/actividades_page.dart';

import 'foro_page.dart';
import 'show_nombre_page.dart';

class Home extends StatefulWidget {
  static String tag = 'home-page';
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectDrawerItem = 0;

  @override
  Widget build(BuildContext context) {
    _getDrawerItemWidget(int pos) {
      switch (pos) {
        case 0:
          return const Foro();
        case 1:
          return const Actividades();
      }
    }

    _onSelectItem(int pos) {
      setState(() {
        _selectDrawerItem = pos;
        Navigator.of(context).pop();
      });
    }

    // ignore: todo
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bienvenido"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('Sebastian Villarreal'),
              accountEmail: Text('sebas_villalva13@hotmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  "S",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              title: const Text("Import"),
              leading: const Icon(Icons.camera_alt),
              selected: (0 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(0);
              },
            ),
            ListTile(
              title: const Text("Gallery"),
              leading: const Icon(Icons.photo),
              selected: (1 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(1);
              },
            ),
            Divider(),
            ListTile(
              title: const Text("Profile"),
              leading: const Icon(Icons.account_box),
              selected: (2 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(1);
              },
            )
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );
  }
}
