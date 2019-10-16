/**
 * 作者：leavesC
 * 时间：2019/10/16 0:15
 * 描述：
 * GitHub：https://github.com/leavesC
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class PaddingPage extends BaseDemoPage {
  PaddingPage() : super('Flutter Padding Demo', padding: 0);

  @override
  Widget generateChildren(BuildContext context) {
    return Column(
        verticalDirection: VerticalDirection.down,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              color: Colors.blue[300],
              width: 180.0,
              height: 180.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Container(
              color: Colors.blue[400],
              width: 180.0,
              height: 180.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: Container(
              color: Colors.blue[600],
              width: 180.0,
              height: 180.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            child: Container(
              color: Colors.blue[800],
              width: 180.0,
              height: 180.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 80),
            child: Container(
              color: Colors.blue[900],
              width: 180.0,
              height: 180.0,
            ),
          ),
        ]);
  }
}
