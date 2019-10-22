import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

/**
 * 作者：leavesC
 * 时间：2019/10/22 22:10
 * 描述：
 * GitHub：https://github.com/leavesC
 * Blog：https://www.jianshu.com/u/9df45b87cfdf
 */
class WaveLoadingWidgetPage extends BaseDemoPage {
  WaveLoadingWidgetPage() : super("WaveLoadingWidget", includeScrollView: true);

  @override
  Widget generateChildren(BuildContext context) {
    return Container(
      width: 200,
      color: Colors.lightGreen,
      height: 200,
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

    var paint = Paint()
      ..isAntiAlias = true
      ..style = PaintingStyle.stroke
      ..color = Colors.black;

    canvas.drawCircle(Offset(radius, radius), radius, paint);

    paint
      ..strokeWidth = 10
      ..style = PaintingStyle.fill;
    canvas.drawPoints(
        PointMode.points, []..add(Offset(radius, radius / 3.0)), paint);

    canvas.save();
    canvas.translate(0, radius);

    paint
      ..strokeWidth = 0
      ..style = PaintingStyle.stroke;

    double waveWidth = radius;
    double waveHeight = radius / 2.0;

    Path path = Path();

    canvas.drawLine(Offset.zero, Offset(side, 0), paint);

    path.quadraticBezierTo(side / 4.0, -waveHeight, radius, 0);
    path.quadraticBezierTo(side / 4.0 * 3.0, waveHeight, side, 0);

//    path.moveTo(-1 * waveWidth, 0);
//
//    for (double temp = -waveWidth; temp < side + waveWidth; temp += waveWidth) {
//      Offset controlPoint = Offset(temp / 2, -radius / 2.0);
//      path.quadraticBezierTo(
//          controlPoint.dx, controlPoint.dy, temp + waveWidth, 0);
//    }

//    path.quadraticBezierTo(controlPoint.dx, -controlPoint.dy, side, 0);

//    for (float i = -waveWidth; i < size + waveWidth; i += waveWidth) {
//      wavePath.rQuadTo(waveWidth / 4f, -waveHeight, waveWidth / 2f, 0);
//      wavePath.rQuadTo(waveWidth / 4f, waveHeight, waveWidth / 2f, 0);
//    }
//    wavePath.lineTo(size, size);
//    wavePath.lineTo(0, size);
//    wavePath.close();

//    path.quadraticBezierTo(radius, 0, side, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
