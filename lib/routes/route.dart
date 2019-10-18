import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/dialog/dialog.dart';
import 'package:flutter_do/layout/align.dart';
import 'package:flutter_do/layout/constrainedBox.dart';
import 'package:flutter_do/layout/container.dart';
import 'package:flutter_do/layout/decoratedBox.dart';
import 'package:flutter_do/layout/flex.dart';
import 'package:flutter_do/layout/padding.dart';
import 'package:flutter_do/layout/row_column.dart';
import 'package:flutter_do/layout/scaffold.dart';
import 'package:flutter_do/layout/stack.dart';
import 'package:flutter_do/layout/transform.dart';
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
  static const route_text = "/widget/text";

  static const route_button = "/widget/button";

  static const route_image = "/widget/image";

  static const route_switchCheckbox = "/widget/switchCheckbox";

  static const route_progress = "/widget/progress";

  static const route_input = "/widget/input";

  static const route_form = "/widget/form";

  static const route_gridView = "/widget/gridView";

  static const route_listView = "/widget/listView";

  static const route_dialog = "/widget/dialog";

  static const route_row_column = "/layout/rowColumn";

  static const route_flex_expanded = "/layout/flexExpanded";

  static const route_align = "/layout/align";

  static const route_padding = "/layout/padding";

  static const route_wrap = "/layout/wrap";

  static const route_stack = "/layout/stack";

  static const route_decoratedBox = "/layout/decoratedBox";

  static const route_transform = "/layout/transform";

  static const route_constrainedBox = "/layout/constrainedBox";

  static const route_container = "/layout/container";

  static const route_scaffold = "/layout/scaffold";
}

MaterialPageRoute generateRoute(RouteSettings settings) {
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
    case RoutePageAll.route_flex_expanded:
      {
        builder = (BuildContext context) => FlexExpandedPage();
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
    case RoutePageAll.route_dialog:
      {
        builder = (BuildContext context) => DialogPage();
        break;
      }
    case RoutePageAll.route_stack:
      {
        builder = (BuildContext context) => StackPage();
        break;
      }
    case RoutePageAll.route_decoratedBox:
      {
        builder = (BuildContext context) => DecoratedBoxPage();
        break;
      }
    case RoutePageAll.route_transform:
      {
        builder = (BuildContext context) => TransformPage();
        break;
      }
    case RoutePageAll.route_constrainedBox:
      {
        builder = (BuildContext context) => ConstrainedBoxPage();
        break;
      }
    case RoutePageAll.route_container:
      {
        builder = (BuildContext context) => ContainerPage();
        break;
      }
    case RoutePageAll.route_scaffold:
      {
        builder = (BuildContext context) => ScaffoldPage();
        break;
      }
  }
  return MaterialPageRoute(builder: builder, settings: settings);
}
