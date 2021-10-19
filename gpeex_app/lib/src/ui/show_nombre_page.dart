import 'package:flutter/material.dart';

class ShowTextPage extends StatefulWidget {
  static String tag = 'show-nombre-page';

  @override
  ShowTextState createState() => ShowTextState();
}

class ShowTextState extends State<ShowTextPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Center(
      child: Text("Sebastian"),
    );
  }
}
