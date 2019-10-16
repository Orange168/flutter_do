/**
 * 作者：leavesC
 * 时间：2019/10/16 12:10
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class GridViewPage extends BaseDemoPage {
  GridViewPage() : super('Flutter GridView Demo');

  @override
  Widget generateChildren(BuildContext context) {
    return Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[]));
  }
}
