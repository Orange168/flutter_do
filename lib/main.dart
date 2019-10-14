import 'package:flutter/material.dart';
import 'package:flutter_do/widget/button.dart';
import 'package:flutter_do/widget/image.dart';
import 'package:flutter_do/widget/progress.dart';
import 'package:flutter_do/routes/route.dart';
import 'package:flutter_do/widget/switch_checkbox.dart';
import 'package:flutter_do/widget/text.dart';

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
              builder = (BuildContext context) => new TextPage();
              break;
            }
          case RoutePageAll.route_button:
            {
              builder = (BuildContext context) => new ButtonPage();
              break;
            }
          case RoutePageAll.route_image:
            {
              builder = (BuildContext context) => new ImagePage();
              break;
            }
          case RoutePageAll.route_switchCheckbox:
            {
              builder = (BuildContext context) => new SwitchCheckboxPage();
              break;
            }
          case RoutePageAll.route_progress:
            {
              builder = (BuildContext context) => new ProgressPage();
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
            _generateButton(
                context: context,
                title: "Text",
                routePath: RoutePageAll.route_text),
            _generateButton(
                context: context,
                title: "Button",
                routePath: RoutePageAll.route_button),
            _generateButton(
                context: context,
                title: "Image",
                routePath: RoutePageAll.route_image),
            _generateButton(
                context: context,
                title: "Switch_Checkbox",
                routePath: RoutePageAll.route_switchCheckbox),
            _generateButton(
                context: context,
                title: "Progress",
                routePath: RoutePageAll.route_progress),
          ],
        ),
      ),
    );
  }
}

Widget _generateButton(
    {context: BuildContext, title: String, routePath: String}) {
  return RaisedButton(
    child: Text(title),
    onPressed: () {
      Navigator.of(context).pushNamed(routePath);
    },
  );
}
