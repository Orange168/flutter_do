import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Input Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _InputHomePage('Flutter Input Demo'),
    );
  }
}

class _InputHomePage extends StatelessWidget {
  final String title;

  _InputHomePage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[]),
      ),
    );
  }
}
