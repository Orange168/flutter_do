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
        Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  "https://cn.bing.com/th?id=OIP.ULMiN7DES66fDdI22MVC2AHaJo&pid=Api&rs=1",
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "网络图片",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/images/avatar.jpg",
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "本地资源图片",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ),
      ]..addAll(getImageList()),
    );
  }
}

List<Widget> getImageList() {
  return BlendMode.values.reversed.map((element) {
    return _ImageWithTipWidget(
      element,
      color: Colors.blue,
    );
  }).toList();
}

class _ImageWithTipWidget extends StatelessWidget {
  final BlendMode colorBlendMode;

  final Color color;

  _ImageWithTipWidget(this.colorBlendMode, {this.color: Colors.lightBlue});

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
            Image.asset(
              "assets/images/avatar.jpg",
              width: 100,
              height: 100,
              color: color,
              colorBlendMode: colorBlendMode,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              colorBlendMode.toString(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
