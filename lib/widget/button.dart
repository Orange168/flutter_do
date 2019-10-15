/**
 * 作者：leavesC
 * 时间：2019/10/15 10:32
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class ButtonPage extends BaseDemoPage {
  ButtonPage() : super('Flutter Button Demo');

  @override
  Widget generateChildren() {
    return Column(
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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            onPressed: () {},
          )
        ]);
  }
}
