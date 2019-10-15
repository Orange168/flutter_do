/**
 * 作者：leavesC
 * 时间：
 * 描述：
 * GitHub：https://github.com/leavesC
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class FlexPage extends BaseDemoPage {
  FlexPage() : super('Flutter Flex Demo');

  @override
  Widget generateChildren() {
    return Column(
        verticalDirection: VerticalDirection.down,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[]);
  }
}
