/**
 * 作者：leavesC
 * 时间：2019/10/16 0:15
 * 描述：
 * GitHub：https://github.com/leavesC
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class FlexPage extends BaseDemoPage {
  FlexPage() : super('Flutter Flex Demo');

  @override
  Widget generateChildren(BuildContext context) {
    return Column(
        verticalDirection: VerticalDirection.down,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  height: 60.0,
                  color: Colors.lightBlue[500],
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  height: 60.0,
                  color: Colors.teal[500],
                ),
              ),
            ],
          ),
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  height: 60.0,
                  color: Colors.deepOrange[500],
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  height: 60.0,
                  color: Colors.orange[500],
                ),
              ),
            ],
          ),
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  height: 60.0,
                  color: Colors.pinkAccent[400],
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 6,
                child: Container(
                  height: 60.0,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ]);
  }
}
