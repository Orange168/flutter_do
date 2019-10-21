/**
 * 作者：leavesC
 * 时间：2019/10/20 22:33
 * 描述：
 * GitHub：https://github.com/leavesC
 * Blog：https://www.jianshu.com/u/9df45b87cfdf
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'WidgetHomePage.dart';
import 'routes/route.dart';

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
  final List _tabs = ["Widget", "Non", "Non"];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
    _tabController.addListener(() {});
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
        children: _tabs.map((tab) {
          return Container(
            alignment: Alignment.center,
            child: WidgetHomePage(),
          );
        }).toList(),
      ),
    );
  }
}

class CategoryBean {}

class WidgetBean {}

class CategoryHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return null;
  }
}
