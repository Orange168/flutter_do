/**
 * 作者：leavesC
 * 时间：2019/10/15 10:32
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class SwitchCheckboxPage extends BaseDemoPage {
  SwitchCheckboxPage() : super('Flutter Switch Checkbox Demo');

  @override
  Widget generateChildren() {
    return _SwitchCheckboxWidget();
  }
}

class _SwitchCheckboxWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SwitchCheckboxState();
  }
}

class _SwitchCheckboxState extends State<_SwitchCheckboxWidget> {
  bool switchSelected = true;

  bool checkboxSelected = false;

  _SwitchCheckboxState();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Switch(
              value: switchSelected,
              activeColor: Colors.deepOrange,
              activeTrackColor: Colors.amber,
              inactiveThumbColor: Colors.cyanAccent,
              inactiveTrackColor: Colors.deepPurple,
              onChanged: (value) {
                setState(() {
                  switchSelected = value;
                });
              },
            ),
            Text(switchSelected ? "选中" : "未选中"),
          ],
        ),
        Row(
          children: <Widget>[
            Checkbox(
              value: checkboxSelected,
              activeColor: Colors.deepOrange,
              checkColor: Colors.amber,
              onChanged: (value) {
                setState(() {
                  checkboxSelected = value;
                });
              },
            ),
            Text(checkboxSelected ? "选中" : "未选中"),
          ],
        ),
      ],
    ));
  }
}
