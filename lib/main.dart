/**
 * 作者：leavesC
 * 时间：2019/10/15 10:32
 * 描述：
 */
import 'package:flutter/material.dart';
import 'package:flutter_do/routes/route.dart';

import 'mainTest.dart';

void main() => runApp(MainApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Do',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Do'),
      onGenerateRoute: _generateRoute,
    );
  }
}

MaterialPageRoute _generateRoute(RouteSettings settings) {
  return MaterialPageRoute(
      builder: (BuildContext context) {
        return pathToWidgetMap.firstWhere((element) {
          return element.containsKey(settings.name);
        })[settings.name];
      },
      settings: settings);
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
    List<Widget> widgetList = [];
    pathToWidgetMap.forEach((element) {
      element.keys.forEach((element) {
        widgetList.add(_generateButton(context, element));
      });
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Wrap(
            spacing: 4,
            children: widgetList,
          ),
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
