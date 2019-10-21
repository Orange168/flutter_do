/**
 * 作者：leavesC
 * 时间：2019/10/21 9:50
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'routes/route.dart';

class WidgetHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WidgetHomePageState();
  }
}

class _WidgetHomePageState extends State<WidgetHomePage> {
  Color _color1 = Colors.grey[100];

  Color _color2 = Colors.grey[200];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
        ),
        itemCount: pathToWidgetMap.length,
        itemBuilder: (BuildContext context, int index) {
          String routePath = pathToWidgetMap[index].keys.first;
          return GestureDetector(
            child: Container(
              color: index % 2 == 0 ? _color1 : _color2,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.share),
                    Text(
                      "${getRouteTag(routePath)}",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(routePath);
            },
          );
        },
      ),
    );
  }

  String getRouteTag(String routePath) {
    List<String> temp = routePath.split("/");
    return temp[temp.length - 1];
  }
}
