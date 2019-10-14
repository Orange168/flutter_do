import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Button Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _ButtonHomePage('Flutter Button Demo'),
    );
  }
}

class _ButtonHomePage extends StatelessWidget {
  final String title;

  _ButtonHomePage(this.title);

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
              RaisedButton(
                child: Text("RaisedButton"),
                onPressed: () {},
              ),
              RaisedButton.icon(
                label: Text("RaisedButton.Icon"),
                icon: Icon(Icons.toys),
                onPressed: () {},
              ),
              FlatButton(
                child: Text("FlatButton"),
                onPressed: () {},
              ),
              FlatButton.icon(
                label: Text("FlatButton.Icon"),
                icon: Icon(Icons.toys),
                onPressed: () {},
              ),
              OutlineButton(
                child: Text("OutlineButton"),
                borderSide: BorderSide(color: Colors.amberAccent, width: 3),
                highlightedBorderColor: Colors.green,
                highlightColor: Colors.cyan[500],
                splashColor: Colors.deepOrange,
                highlightElevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.toys),
                color: Colors.green,
                tooltip: "is IconButton",
                onPressed: () {},
              ),
              RaisedButton(
                child: Text("Submit"),
                textColor: Colors.white,
                color: Colors.blue[700],
                highlightColor: Colors.blue[900],
                splashColor: Colors.grey[600],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                onPressed: () {},
              )
            ]),
      ),
    );
  }
}
