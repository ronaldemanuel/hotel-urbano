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
        buildAdvertisingContainer(),
      ],
    );
  }

  buildAdvertisingContainer() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(child: buildTextContent()),
          SizedBox(width: 16),
          Placeholder(
            color: Colors.white,
            fallbackHeight: 150,
            fallbackWidth: 130,
          ),
        ],
      ),
    );
  }

  buildTextContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildGeneralText(
          'Top destinos mais buscados',
          fontSize: 22,
          color: Colors.white,
        ),
        SizedBox(height: 8),
        buildGeneralText(
          'Corre que ta rolando muita promoção',
          fontSize: 16,
          color: Colors.white,
        ),
        SizedBox(height: 8),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFF8FF04),
          ),
          onPressed: () {},
          child: buildGeneralText(
            'EU QUERO!',
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }

  buildGeneralText(String text,
      {double? fontSize, Color? color, FontWeight? fontWeight}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
