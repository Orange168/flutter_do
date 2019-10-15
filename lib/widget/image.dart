/**
 * 作者：leavesC
 * 时间：2019/10/15 10:32
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class ImagePage extends BaseDemoPage {
  ImagePage() : super('Flutter Image Demo');

  @override
  Widget generateChildren() {
    return Column(
        children: <Widget>[
      _ImageWithTipWidget(
          widget: Image.network(
            "https://cn.bing.com/th?id=OIP.ULMiN7DES66fDdI22MVC2AHaJo&pid=Api&rs=1",
            width: 100,
            height: 100,
          ),
          tip: "网络图片"),
      getImage(color: null, colorBlendMode: null, tip: "本地资源图片"),
    ]..addAll(getImageList()));
  }
}

List<Widget> getImageList() {
  return BlendMode.values.reversed.map((element) {
    return getImage(colorBlendMode: element, tip: element.toString());
  }).toList();
}

Widget getImage(
    {Color color = Colors.cyan, BlendMode colorBlendMode, String tip}) {
  return _ImageWithTipWidget(
      widget: Image.asset(
        "assets/images/avatar.jpg",
        width: 100,
        height: 100,
        color: color,
        colorBlendMode: colorBlendMode,
      ),
      tip: tip);
}

class _ImageWithTipWidget extends StatelessWidget {
  final String tip;

  final Widget widget;

  _ImageWithTipWidget({this.widget, this.tip});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            widget,
            Text(
              tip,
              style: TextStyle(color: Colors.black, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
