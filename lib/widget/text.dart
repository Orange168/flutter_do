/**
 * 作者：leavesC
 * 时间：2019/10/15 10:32
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

const String _tip =
    """晋太元中，武陵人捕鱼为业。缘溪行，忘路之远近。忽逢桃花林，夹岸数百步，中无杂树，芳草鲜美，落英缤纷。渔人甚异之，复前行，欲穷其林。林尽水源，便得一山，山有小口，仿佛若有光。便舍船，从口入。初极狭，才通人。复行数十步，豁然开朗。土地平旷，屋舍俨然，有良田美池桑竹之属。""";

class TextPage extends BaseDemoPage {
  TextPage() : super('Text');

  @override
  Widget generateChildren(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            _tip,
            textAlign: TextAlign.start,
            textScaleFactor: 1,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black.withOpacity(0.2),
              //透明度 和fontWeight shadows 冲突
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed,
              fontStyle: FontStyle.italic,
              shadows: [Shadow(offset: Offset(2, 2), blurRadius: 2.0)],
              fontFamily: 'Light',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Text(
            _tip,
            textAlign: TextAlign.start,
            textScaleFactor: 1.1,
            style: TextStyle(
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed,
                fontSize: 18,
                color: Colors.grey),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Text(
            _tip,
            textAlign: TextAlign.start,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            textScaleFactor: 1.2,
            style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                shadows: [Shadow(offset: Offset(2, 2), blurRadius: 2.0)]),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Text(
            _tip,
            textAlign: TextAlign.start,
            textScaleFactor: 1.4,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black87,
              fontFamily: 'Light',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: RichText(
            text: TextSpan(
              text: 'Don\'t tax the South ',
              style: TextStyle(color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: 'cuz',
                  style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red,
                    decorationStyle: TextDecorationStyle.wavy,
                  ),
                ),
                TextSpan(
                    text: ' we got it made in the shade',
                    style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Stack(
            children: <Widget>[
              // Stroked text as border.
              Text(
                'Greetings, planet!',
                style: TextStyle(
                  fontSize: 40,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 6
                    ..color = Colors.blue[700],
                ),
              ),
              // Solid text as fill.
              Text(
                'Greetings, planet!',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.grey[300],
                ),
              ),
            ],
          ),
        ),
//        Padding(
//          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
//          child: Text(
//            'Greeings, planet',
//            style: TextStyle(
//              fontSize: 40,
//                foreground: Paint()
//                  ..shader = ui.Gradient.linear(
//                    const Offset(0, 20),
//                    const Offset(150, 20),
//                    <Color>[
//                      Colors.red,
//                      Colors.yellow,
//                    ],
//                  )
//            ),
//          ),
//        ),
        TextSpanWidget(),
      ],
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
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Text.rich(TextSpan(children: [
        TextSpan(
            text: "带手势识别的文本：",
            style: TextStyle(fontSize: 16, color: Colors.black)),
        TextSpan(
            text: "https://github.com/leavesC",
            style: TextStyle(fontSize: 18, color: Colors.blue),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("点击了链接"),
                  duration: const Duration(milliseconds: 550),
                ));
              })
      ])),
    );
  }
}
