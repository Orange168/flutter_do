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
    return _ListView();
  }
}

class _ListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListViewState();
  }
}

class _ListViewState extends State<_ListView> {
  static const MAX_SIZE = 80;

  static const loadEndTag = "##loadEndTag#";

  var _dataList = <String>[loadEndTag];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _dataList.length,
        itemExtent: 40.0,
        itemBuilder: (BuildContext context, int index) {
          if (_dataList[index] == loadEndTag) {
            if (_dataList.length < MAX_SIZE) {
              _generateData();
              return Container(
                alignment: Alignment.center,
                child: SizedBox(
                    width: 28,
                    height: 28,
                    child: CircularProgressIndicator(strokeWidth: 2)),
              );
            } else {
              return Container(
                  alignment: Alignment.center,
                  child: Text(
                    "加载完毕",
                    style: TextStyle(color: Colors.grey),
                  ));
            }
          }
          return ListTile(title: Text("$index"));
        });
  }

  void _generateData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      setState(() {
        List<String> list = List<String>();
        for (int i = 0; i < 20; i++) {
          list.add((_dataList.length + i).toString());
        }
        _dataList.insertAll(_dataList.length - 1, list);
      });
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
