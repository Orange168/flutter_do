/**
 * 作者：leavesC
 * 时间：2019/10/15 10:32
 * 描述：
 */
import 'package:flutter/material.dart';
import 'package:flutter_do/layout/align.dart';
import 'package:flutter_do/layout/flex.dart';
import 'package:flutter_do/layout/row_column.dart';
import 'package:flutter_do/layout/wrap.dart';
import 'package:flutter_do/routes/route.dart';
import 'package:flutter_do/widget/button.dart';
import 'package:flutter_do/widget/form.dart';
import 'package:flutter_do/widget/image.dart';
import 'package:flutter_do/widget/input.dart';
import 'package:flutter_do/widget/progress.dart';
import 'package:flutter_do/widget/switch_checkbox.dart';
import 'package:flutter_do/widget/text.dart';

import 'layout/padding.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        String routeName = settings.name;
        switch (routeName) {
          case RoutePageAll.route_text:
            {
              builder = (BuildContext context) => TextPage();
              break;
            }
          case RoutePageAll.route_button:
            {
              builder = (BuildContext context) => ButtonPage();
              break;
            }
          case RoutePageAll.route_image:
            {
              builder = (BuildContext context) => ImagePage();
              break;
            }
          case RoutePageAll.route_switchCheckbox:
            {
              builder = (BuildContext context) => SwitchCheckboxPage();
              break;
            }
          case RoutePageAll.route_progress:
            {
              builder = (BuildContext context) => ProgressPage();
              break;
            }
          case RoutePageAll.route_input:
            {
              builder = (BuildContext context) => InputPage();
              break;
            }
          case RoutePageAll.route_form:
            {
              builder = (BuildContext context) => FormPage();
              break;
            }
          case RoutePageAll.route_row_column:
            {
              builder = (BuildContext context) => RowColumnPage();
              break;
            }
          case RoutePageAll.route_flex:
            {
              builder = (BuildContext context) => FlexPage();
              break;
            }
          case RoutePageAll.route_align:
            {
              builder = (BuildContext context) => AlignPage();
              break;
            }
          case RoutePageAll.route_padding:
            {
              builder = (BuildContext context) => PaddingPage();
              break;
            }
          case RoutePageAll.route_wrap:
            {
              builder = (BuildContext context) => WrapPage();
              break;
            }
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _generateButton(context, RoutePageAll.route_text),
            _generateButton(context, RoutePageAll.route_button),
            _generateButton(context, RoutePageAll.route_image),
            _generateButton(context, RoutePageAll.route_switchCheckbox),
            _generateButton(context, RoutePageAll.route_progress),
            _generateButton(context, RoutePageAll.route_input),
            _generateButton(context, RoutePageAll.route_form),
            _generateButton(context, RoutePageAll.route_row_column),
            _generateButton(context, RoutePageAll.route_flex),
            _generateButton(context, RoutePageAll.route_align),
            _generateButton(context, RoutePageAll.route_padding),
            _generateButton(context, RoutePageAll.route_wrap),
          ],
        ),
      ),
    );
  }
}

String getRouteTag(String routePath) {
  List<String> temp = routePath.split("/");
  return temp[temp.length - 1];
}

Widget _generateButton(BuildContext context, String routePath, {String title}) {
  return RaisedButton(
    child: Text(title ?? getRouteTag(routePath)),
    onPressed: () {
      Navigator.of(context).pushNamed(routePath);
    },
  );
}
