/**
 * 作者：leavesC
 * 时间：2019/10/16 12:14
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class ListViewPage extends BaseDemoPage {
  ListViewPage() : super('Flutter ListView Demo', includeScrollView: false);

  @override
  Widget generateChildren(BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        itemExtent: 40.0,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text("$index"));
        });
  }
}
