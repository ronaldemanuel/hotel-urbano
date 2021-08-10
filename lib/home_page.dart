import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6FBF7),
      body: buildBody(),
    );
  }

  buildBody() {
    return ListView(
      children: [
        Container(
          color: Color(0xFF10397B),
          height: 150,
        ),
      ],
    );
  }
}
