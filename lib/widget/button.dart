/**
 * 作者：leavesC
 * 时间：2019/10/15 10:32
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_do/common/page.dart';
import 'package:flutter_do/widget/FadButton.dart';

class ButtonPage extends BaseDemoPage {

  ButtonPage() : super('Button', includeScrollView: false);

  void _onPressed(BuildContext context) {
    showSnackBar(context, "Click me");
  }

  @override
  Widget generateChildren(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      RaisedButton(
                        child: Text("Click me"),
                        onPressed: () {
                          _onPressed(context);
                        },
                      ),
                      RaisedButton.icon(
                        label: Text("Click me"),
                        icon: Icon(Icons.insert_emoticon),
                        onPressed: () {
                          _onPressed(context);
                        },
                      ),
                      FlatButton(
                        child: Text("Click me"),
                        onPressed: () {
                          _onPressed(context);
                        },
                      ),
                      FlatButton.icon(
                        label: Text("Click me"),
                        icon: Icon(Icons.insert_emoticon),
                        onPressed: () {
                          _onPressed(context);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.toys),
                        color: Colors.green,
                        tooltip: "is IconButton",
                        onPressed: () {
                          _onPressed(context);
                        },
                      ),
                      OutlineButton(
                        child: Text("Click me"),
                        borderSide: BorderSide(
                            color: Colors.amberAccent, width: 1),
                        highlightedBorderColor: Colors.green,
                        highlightColor: Colors.blue[600],
                        splashColor: Colors.transparent,
                        highlightElevation: 20,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(10))),
                        onPressed: () {
                          _onPressed(context);
                        },
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: RaisedButton(
                            child: Text("Click me"),
                            textColor: Colors.white,
                            color: Colors.blue[600],
                            highlightColor: Colors.blue[700],
                            splashColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            onPressed: () {
                              _onPressed(context);
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: FadButton(onPressed: () {}, child: Text('Press Me')),
                        ),
                      ),
                      MyStatefulWidget(),
                      MyDropdownButton(),

                    ])),
          )
        ],
      ),
    );
  }
}

class MyDropdownButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyDropdownButton();
  }

}

class _MyDropdownButton extends State<StatefulWidget> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.cached),
      iconSize: 19,
      elevation: 16,
      style: TextStyle(
          color: Colors.deepPurple
      ),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      })
          .toList(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double sideLength = 50;

  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: sideLength,
      width: sideLength,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
      child: Material(
        child: InkWell(
          borderRadius: BorderRadius.circular(20.0),
          onTap: () {
            setState(() {
              sideLength == 50 ? sideLength = 100 : sideLength = 50;
            });
          },
          child: Container(
            height: 50.0,
            alignment: Alignment.center,
//            color: Colors.white,
            child: Text(
              "是速度",
              maxLines: 1,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
//      child: Material(
//        color: Colors.green,
//        child: InkWell(
//          child: Text('InkWell'),
//          onTap: () {
//            setState(() {
//              sideLength == 50 ? sideLength = 100 : sideLength = 50;
//            });
//          },
//        ),
//      ),
    );
  }
}
