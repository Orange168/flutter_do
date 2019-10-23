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

class _WaveLoadingWidgetState extends State<WaveLoadingWidget>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);
    controller.addStatusListener((status) {
      switch (status) {
        case AnimationStatus.dismissed:
          // TODO: Handle this case.
          break;
        case AnimationStatus.forward:
          // TODO: Handle this case.
          break;
        case AnimationStatus.reverse:
          // TODO: Handle this case.
          break;
        case AnimationStatus.completed:
//          controller.forward();
          break;
      }
    });
    animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(controller)
      ..addListener(() {
        print("animation.value： ${animation.value}");
        setState(() => {});
      });
//    controller.forward();
    _playAnimation();
  }

  Future<Null> _playAnimation() async {
    try {
      //先正向执行动画
      await controller.forward().orCancel;
      //再反向执行动画
      await controller.reverse().orCancel;
    } on TickerCanceled {
      // the animation got canceled, probably because we were disposed
    }
  }

  @override
  Widget build(BuildContext context) {
//    return CustomPaint(
//      painter: WaveLoadingPainter(animation.value),
//    );
  }
}

class WaveLoadingPainter extends CustomPainter {
  final double waveWidth;

  final double waveHeight;

  final double animation;

  WaveLoadingPainter(this.waveWidth, this.waveHeight, this.animation);

  @override
  void paint(Canvas canvas, Size size) {
    double side = min(size.width, size.height);
    double radius = side / 2.0;

    Path circlePath = Path();
    circlePath.addArc(Rect.fromLTWH(0, 0, side, side), 0, pi);

//    Path wavePath = Path();
//    double tempEndPointX;
//    for (double startPointX = 0; startPointX < side; startPointX += waveWidth) {
//      double controlPointX = startPointX + waveWidth / 2.0;
//      double controlPointY = waveHeight;
//      double endPointX = startPointX + waveWidth;
//      double endPointY = 0;
//      wavePath.quadraticBezierTo(
//          controlPointX, controlPointY, endPointX, endPointY);
//      tempEndPointX = endPointX + waveWidth;
//      wavePath.quadraticBezierTo(
//          controlPointX + waveWidth, -controlPointY, tempEndPointX, endPointY);
//      startPointX += waveWidth;
//    }
//    wavePath.relativeLineTo(0, radius);
//    wavePath.relativeLineTo(-tempEndPointX, 0);
//    wavePath.close();
//
    var paint = Paint()
      ..isAntiAlias = true
      ..style = PaintingStyle.fill
      ..color = Colors.lightBlue;
//    var combine = Path.combine(PathOperation.intersect, circlePath, wavePath);
//    canvas.drawPath(combine, paint);

    canvas.drawPath(circlePath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
