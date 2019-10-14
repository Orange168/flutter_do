import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Text Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TextHomePage('Flutter Text Demo'),
    );
  }
}

class TextHomePage extends StatelessWidget {
  final String title;

  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();

  TextHomePage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(
              "hello world,I am leavesc",
              textAlign: TextAlign.start,
              textScaleFactor: 1,
              style: TextStyle(fontSize: 18, color: Colors.deepOrange[400]),
            ),
            Text(
              "hello world,I am leavesc",
              textAlign: TextAlign.start,
              textScaleFactor: 1.1,
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed,
                  fontSize: 18,
                  color: Colors.brown[400]),
            ),
            Text(
              " hello world,I am leavesc!" * 6,
              textAlign: TextAlign.start,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textScaleFactor: 1.2,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue[400],
                  shadows: [Shadow(offset: Offset(2, 2), blurRadius: 2.0)]),
            ),
            TextSpanWidget(),
          ],
        ),
      ),
    );
  }
}

class TextSpanWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextSpanWidgetState();
  }
}

class _TextSpanWidgetState extends State<TextSpanWidget> {
  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer()
    ..onTap = () {
      print("被点击了");
    };

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(text: "带手势识别的文本：", style: TextStyle(color: Colors.black)),
      TextSpan(
          text: "https://github.com/leavesC",
          style: TextStyle(color: Colors.blue),
          recognizer: _tapGestureRecognizer)
    ]));
  }
}
