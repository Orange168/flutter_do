/**
 * 作者：leavesC
 * 时间：2019/10/15 10:32
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/routes/route.dart';

import 'widgetHome.dart';
import 'routes/route.dart';

void main() => runApp(MainApp());

const title = "Flutter Do";

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
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

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  final List<String> _tabs = ["Widget", "None", "None"];

  List<Widget> _children;

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
    _tabController.addListener(() {});
    _children = [
      Container(
        alignment: Alignment.center,
        child: WidgetHomePage(),
      ),
      _generateNoneWidget(),
      _generateNoneWidget(),
    ];
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 10,
        bottom: TabBar(
            isScrollable: false,
            controller: _tabController,
            tabs: _tabs.map((e) => Tab(text: e)).toList()),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _children,
      ),
    );
  }

  Widget _generateNoneWidget() {
    return Center(
      child: Text(
        "None",
        style: TextStyle(
          color: Colors.black,
          fontSize: 28,
        ),
      ),
    );
  }
}
