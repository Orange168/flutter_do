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
  Widget generateChildren(BuildContext context) {
    return Column(
      children: <Widget>[
        FlatButton(
          child: Text("SimpleListViewPage"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return _SimpleListViewPage();
            }));
          },
        ),
        FlatButton(
          child: Text("ListViewPage"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return _ListViewPage();
            }));
          },
        ),
      ],
    );
  }
}

class _ListViewPage extends BaseDemoPage {
  _ListViewPage() : super('Flutter ListView Demo', includeScrollView: false);

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

class _SimpleListViewPage extends BaseDemoPage {
  _SimpleListViewPage()
      : super('Flutter Simple ListView Demo', includeScrollView: false);

  @override
  Widget generateChildren(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20.0),
      children: _generateListView(),
    );
  }

  List<Widget> _generateListView() {
    List<Widget> list = List<Widget>();
    for (int i = 0; i < 40; i++) {
      list.add(Padding(
        padding: EdgeInsets.all(10),
        child: Text("$i"),
      ));
    }
    return list;
  }
}
