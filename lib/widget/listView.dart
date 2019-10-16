/**
 * 作者：leavesC
 * 时间：2019/10/16 12:14
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class ListViewPage extends BaseDemoPage {
  ListViewPage() : super('Flutter ListView Demo');

  @override
  Widget generateChildren() {
    return Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[]));
  }
}
