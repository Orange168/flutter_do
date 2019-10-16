/**
 * 作者：leavesC
 * 时间：
 * 描述：
 * GitHub：https://github.com/leavesC
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class BaseDemoPage extends StatelessWidget {
  final String title;

  final double padding;

  BaseDemoPage(this.title, {this.padding});

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
        children: generateChildren(context),
        padding: padding ?? 0,
      ),
    );
  }
}

class _HomePage extends StatelessWidget {
  final String title;

  final Widget children;

  final double padding;

  _HomePage({this.title, @required this.children, this.padding});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? "Flutter Demo"),
      ),
      body: Padding(
        padding: EdgeInsets.all(padding),
        child: SingleChildScrollView(
          child: children,
        ),
      ),
    );
  }
}
