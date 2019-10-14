import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Image Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _ImageHomePage('Flutter Image Demo'),
    );
  }
}

class _ImageHomePage extends StatelessWidget {
  final String title;

  _ImageHomePage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
          _ImageWithTipWidget(
              widget: Image.network(
                "https://cn.bing.com/th?id=OIP.ULMiN7DES66fDdI22MVC2AHaJo&pid=Api&rs=1",
                width: 100,
                height: 100,
              ),
              tip: "网络图片"),
          getImage(color: null, colorBlendMode: null, tip: "本地资源图片"),
        ]..addAll(getImageList())),
      ),
    );
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
