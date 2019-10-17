/**
 * 作者：leavesC
 * 时间：2019/10/16 12:10
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class GridViewPage extends BaseDemoPage {
  GridViewPage() : super('Flutter GridView Demo', includeScrollView: false);

  @override
  Widget generateChildren(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          RaisedButton(
            child: Text("SimpleGridViewPage"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return _SimpleGridViewPage();
              }));
            },
          ),
          RaisedButton(
            child: Text("GridViewPage"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return _GridViewPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}

class _GridViewPage extends BaseDemoPage {
  _GridViewPage() : super('Flutter GridView Demo', includeScrollView: false);

  @override
  Widget generateChildren(BuildContext context) {
    return _GridView();
  }
}

class _GridView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GridViewState();
  }
}

class _GridViewState extends State<_GridView> {
  @override
  Widget build(BuildContext context) {
    return Text("xxxx");
  }
}

class _SimpleGridViewPage extends BaseDemoPage {
  _SimpleGridViewPage()
      : super('Flutter Simple GridView Demo', includeScrollView: false);

  @override
  Widget generateChildren(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              children: _generateWidget(10, Colors.lightBlue)),
        ),
        Flexible(
          flex: 1,
          child: GridView.count(
            scrollDirection: Axis.horizontal,
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: _generateWidget(20, Colors.teal),
          ),
        ),
      ],
    );
  }

  List<Widget> _generateWidget(int size, Color color) {
    List list = new List<Widget>();
    for (int i = 0; i < size; i++) {
      list.add(Container(
        color: color,
      ));
    }
    return list;
  }
}
