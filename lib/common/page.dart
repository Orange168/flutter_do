/**
 * 作者：leavesC
 * 时间：
 * 描述：
 * GitHub：https://github.com/leavesC
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef BuildWidget = Widget Function(BuildContext context);

abstract class BaseDemoPage extends StatelessWidget {
  final String title;

  final double padding;

  final bool includeScrollView;

  BaseDemoPage(this.title, {this.padding, this.includeScrollView = true});

  Widget generateChildren(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _HomePage(
        title: title,
        buildWidget: generateChildren,
        padding: padding ?? 0,
        includeScrollView: includeScrollView,
      ),
    );
  }

  void showSnackBar(BuildContext context, String msg,
      {Duration duration = _snackBarTransitionDuration}) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(msg),
      duration: duration,
    ));
  }
}

const Duration _snackBarTransitionDuration = Duration(milliseconds: 850);

class _HomePage extends StatelessWidget {
  final String title;

  final BuildWidget buildWidget;

  final double padding;

  final bool includeScrollView;

  _HomePage(
      {this.title,
      @required this.buildWidget,
      @required this.includeScrollView,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? "Flutter Demo"),
      ),
      body: _HomePageWidget(
        buildWidget: buildWidget,
        includeScrollView: includeScrollView,
        padding: padding,
      ),
    );
  }
}

class _HomePageWidget extends StatelessWidget {
  final BuildWidget buildWidget;

  final double padding;

  final bool includeScrollView;

  _HomePageWidget(
      {@required this.buildWidget,
      @required this.includeScrollView,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: includeScrollView
          ? SingleChildScrollView(
              child: buildWidget(context),
            )
          : buildWidget(context),
    );
  }
}
