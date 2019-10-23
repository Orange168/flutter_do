/**
 * 作者：leavesC
 * 时间：2019/10/22 22:10
 * 描述：
 * GitHub：https://github.com/leavesC
 * Blog：https://www.jianshu.com/u/9df45b87cfdf
 */

import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class WaveLoadingWidgetPage extends BaseDemoPage {
  WaveLoadingWidgetPage() : super("WaveLoadingWidget", includeScrollView: true);

  @override
  Widget generateChildren(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
      width: 800,
      height: 150,
      child: WaveLoadingWidget(),
    );
  }
}

class WaveLoadingWidget extends StatefulWidget {
  @override
  _WaveLoadingWidgetState createState() => _WaveLoadingWidgetState();
}

class _WaveLoadingWidgetState extends State<WaveLoadingWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: WaveLoadingPainter(),
    );
  }
}

class WaveLoadingPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double side = min(size.width, size.height);
    double radius = side / 2.0;
    double waveWidth = radius;
    double waveHeight = radius / 1.2;

    canvas.translate(0, radius);

    Path circlePath = Path();
    circlePath.addArc(Rect.fromLTWH(0, -radius, side, side), 0, 2 * pi);

    Path wavePath = Path();
    double tempEndPointX;
    for (double startPointX = 0; startPointX < side; startPointX += waveWidth) {
      double controlPointX = startPointX + waveWidth / 2.0;
      double controlPointY = waveHeight;
      double endPointX = startPointX + waveWidth;
      double endPointY = 0;
      wavePath.quadraticBezierTo(
          controlPointX, controlPointY, endPointX, endPointY);
      tempEndPointX = endPointX + waveWidth;
      wavePath.quadraticBezierTo(
          controlPointX + waveWidth, -controlPointY, tempEndPointX, endPointY);
      startPointX += waveWidth;
    }
    wavePath.relativeLineTo(0, radius);
    wavePath.relativeLineTo(-tempEndPointX, 0);
    wavePath.close();

    var paint = Paint()
      ..isAntiAlias = true
      ..style = PaintingStyle.fill
      ..color = Colors.black;
    var combine = Path.combine(PathOperation.intersect, circlePath, wavePath);
    canvas.drawPath(combine, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}