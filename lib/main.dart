import 'package:flutter/material.dart';
import 'package:flutter_do/button.dart';
import 'package:flutter_do/image.dart';
import 'package:flutter_do/route.dart';
import 'package:flutter_do/text.dart';

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
            RaisedButton(
              child: Text("Text"),
              onPressed: () {
                Navigator.of(context).pushNamed(RoutePageAll.route_text);
              },
            ),
            RaisedButton(
              child: Text("Button"),
              onPressed: () {
                Navigator.of(context).pushNamed(RoutePageAll.route_button);
              },
            ),
            RaisedButton(
              child: Text("Image"),
              onPressed: () {
                Navigator.of(context).pushNamed(RoutePageAll.route_image);
              },
            )
          ],
        ),
      ),
    );
  }
}
