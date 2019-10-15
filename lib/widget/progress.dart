import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class ProgressPage extends BaseDemoPage {

  ProgressPage() : super('Flutter Progress Demo');

  @override
  Widget generateChildren() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey[500],
              valueColor: AlwaysStoppedAnimation(Colors.amber),
              value: null,
            ),
            padding: EdgeInsets.all(30),
          ),
          Padding(
            child: LinearProgressIndicator(
              backgroundColor: Colors.deepPurpleAccent[400],
              valueColor: AlwaysStoppedAnimation(Colors.red),
              value: 0.3,
            ),
            padding: EdgeInsets.all(30),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Padding(
              child: CircularProgressIndicator(
                backgroundColor: Colors.red[600],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ),
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            ),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Padding(
              child: CircularProgressIndicator(
                backgroundColor: Colors.red[600],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ),
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            ),
          ),
          SizedBox(
            height: 200,
            width: 200,
            child: Padding(
              child: CircularProgressIndicator(
                backgroundColor: Colors.black45,
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                value: 0.3,
              ),
              padding: EdgeInsets.all(0),
            ),
          ),
        ]);
  }
}
