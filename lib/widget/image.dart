/**
 * 作者：leavesC
 * 时间：2019/10/15 10:32
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class ImagePage extends BaseDemoPage {
  ImagePage() : super('Image');

  @override
  Widget generateChildren(BuildContext context) {
    return Column(
        children: <Widget>[
      _ImageWithTipWidget(
          Image.network(
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571395288485&di=d475ea9a1c8920f291e1b65d60e46f58&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Fsinacn%2Fw640h380%2F20171224%2F4873-fypvuqf5294484.jpg",
            width: 100,
            height: 100,
          ),
          "网络图片"),
      _getImage(color: null, colorBlendMode: null, tip: "本地资源图片"),
    ]..addAll(_getImageList()));
  }
}

List<Widget> _getImageList() {
  return BlendMode.values.reversed.map((element) {
    return _getImage(colorBlendMode: element, tip: element.toString());
  }).toList();
}

Widget _getImage(
    {Color color = Colors.cyan, BlendMode colorBlendMode, String tip}) {
  return _ImageWithTipWidget(
      Image.asset(
        "assets/images/avatar.jpg",
        width: 100,
        height: 100,
        color: color,
        colorBlendMode: colorBlendMode,
      ),
      tip);
}

class _ImageWithTipWidget extends StatelessWidget {
  final String tip;

  final Widget widget;

  _ImageWithTipWidget(this.widget, this.tip);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            widget,
            SizedBox(
              height: 10,
            ),
            Text(
              tip,
              style: TextStyle(color: Colors.black, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
