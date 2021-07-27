import 'package:flutter/material.dart';
import 'package:maxine_bot/chat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maxine bot',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Maxine Black'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/photo.jpeg'),
          ),
        ),
        title: Text(widget.title),
      ),
      body: Center(
        child: Chat(),
      ),
    );
  }
}
