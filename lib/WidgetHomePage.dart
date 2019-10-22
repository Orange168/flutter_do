/**
 * 作者：leavesC
 * 时间：2019/10/21 9:50
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/category.dart';
import 'routes/route.dart';

Color bgColor = Colors.grey[200];

class WidgetHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WidgetHomePageState();
  }
}

class _WidgetHomePageState extends State<WidgetHomePage> {
  @override
  Widget build(BuildContext context) {
    return buildWidget();
  }

  Widget buildWidget() {
    var categoryList = getCategoryList();
    return Container(
      color: bgColor,
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: ListView.separated(
            itemCount: categoryList.length,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 20,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return buildGridWidget(categoryList[index]);
            }),
      ),
    );
  }

  Widget buildGridWidget(CategoryBean bean) {
    var children = bean.children;
    return Container(
      margin: EdgeInsets.only(top: 0),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.8,
        ),
        itemCount: children.length,
        itemBuilder: (BuildContext context, int index) {
          double padding;
          if (index % 3 <= 1) {
            padding = 1.5;
          } else {
            padding = 0;
          }
          return GestureDetector(
            child: Container(
              color: Colors.white,
              margin: EdgeInsets.only(right: padding, bottom: 1.5),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.settings,
                      color: Colors.lightBlue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${children[index].name}",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(children[index].routePath);
            },
          );
        },
      ),
    );
  }
}
