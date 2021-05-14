import 'package:flutter/material.dart';

void main() {
  return runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Roll Em\'')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset('images/dice1.png'),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset('images/dice1.png'),
        ))
      ],
    ));
  }
}
