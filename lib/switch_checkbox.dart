import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchCheckboxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Switch Checkbox Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _SwitchCheckboxHomePage('Flutter Switch Checkbox Demo'),
    );
  }
}

class _SwitchCheckboxHomePage extends StatelessWidget {
  final String title;

  _SwitchCheckboxHomePage(this.title);

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
          children: <Widget>[
            _SwitchCheckboxWidget(),
          ],
        ),
      ),
    );
  }
}

class _SwitchCheckboxWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SwitchCheckboxState();
  }
}

class _SwitchCheckboxState extends State<_SwitchCheckboxWidget> {
  bool switchSelected = true;

  bool checkboxSelected = false;

  _SwitchCheckboxState();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Switch(
              value: switchSelected,
              activeColor: Colors.deepOrange,
              activeTrackColor: Colors.amber,
              inactiveThumbColor: Colors.cyanAccent,
              inactiveTrackColor: Colors.deepPurple,
              onChanged: (value) {
                setState(() {
                  switchSelected = value;
                });
              },
            ),
            Text(switchSelected ? "选中" : "未选中"),
          ],
        ),
        Row(
          children: <Widget>[
            Checkbox(
              value: checkboxSelected,
              activeColor: Colors.deepOrange,
              checkColor: Colors.amber,
              onChanged: (value) {
                setState(() {
                  checkboxSelected = value;
                });
              },
            ),
            Text(checkboxSelected ? "选中" : "未选中"),
          ],
        ),
      ],
    ));
  }
}
