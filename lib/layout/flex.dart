/**
 * 作者：leavesC
 * 时间：2019/10/16 0:15
 * 描述：
 * GitHub：https://github.com/leavesC
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class FlexExpandedPage extends BaseDemoPage {
  FlexExpandedPage() : super('Flutter Flex Expanded Demo', includeScrollView: false);

  @override
  Widget generateChildren(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
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
                    flex: 10,
                    child: Container(
                      height: 60.0,
                      color: Colors.lightBlue[400],
                    ),
                  ),
                ],
              ),
              Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 60.0,
                      color: Colors.deepOrange[500],
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Container(
                      height: 60.0,
                      color: Colors.deepOrange[400],
                    ),
                  ),
                ],
              ),
              Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    flex: 6,
                    child: Container(
                      height: 60.0,
                      color: Colors.teal[500],
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Container(
                      height: 60.0,
                      color: Colors.teal[400],
                    ),
                  ),
                ],
              ),
              Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: Container(
                      height: 60.0,
                      color: Colors.brown[500],
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Container(
                      height: 60.0,
                      color: Colors.brown[400],
                    ),
                  ),
                ],
              ),
              Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    flex: 10,
                    child: Container(
                      height: 60.0,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(
                    flex: 10,
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
