import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';
import 'package:flutter_do/layout/align.dart';
import 'package:flutter_do/layout/flex.dart';
import 'package:flutter_do/layout/padding.dart';
import 'package:flutter_do/layout/row_column.dart';
import 'package:flutter_do/layout/wrap.dart';
import 'package:flutter_do/widget/button.dart';
import 'package:flutter_do/widget/form.dart';
import 'package:flutter_do/widget/gridView.dart';
import 'package:flutter_do/widget/image.dart';
import 'package:flutter_do/widget/input.dart';
import 'package:flutter_do/widget/listView.dart';
import 'package:flutter_do/widget/progress.dart';
import 'package:flutter_do/widget/switch_checkbox.dart';
import 'package:flutter_do/widget/text.dart';

class RoutePageAll {
  static Map<String, BaseDemoPage> routeMap = {
    route_text: TextPage(),
  };

  static const route_text = "/widget/text";

  static const route_button = "/widget/button";

  static const route_image = "/widget/image";

  static const route_switchCheckbox = "/widget/switchCheckbox";

  static const route_progress = "/widget/progress";

  static const route_input = "/widget/input";

  static const route_form = "/widget/form";

  static const route_row_column = "/widget/rowColumn";

  static const route_flex = "/widget/flex";

  static const route_align = "/widget/align";

  static const route_padding = "/widget/padding";

  static const route_wrap = "/widget/wrap";

  static const route_gridView = "/widget/gridView";

  static const route_listView = "/widget/listView";
}

MaterialPageRoute hh(RouteSettings settings) {
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
    case RoutePageAll.route_listView:
      {
        builder = (BuildContext context) => ListViewPage();
        break;
      }
    case RoutePageAll.route_gridView:
      {
        builder = (BuildContext context) => GridViewPage();
        break;
      }
  }
  return MaterialPageRoute(builder: builder, settings: settings);
}
