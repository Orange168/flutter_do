import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/container/container.dart';
import 'package:flutter_do/container/decoratedBox.dart';
import 'package:flutter_do/container/padding.dart';
import 'package:flutter_do/container/scaffold.dart';
import 'package:flutter_do/container/transform.dart';
import 'package:flutter_do/layout/align.dart';
import 'package:flutter_do/layout/constrainedBox.dart';
import 'package:flutter_do/layout/flex.dart';
import 'package:flutter_do/layout/row_column.dart';
import 'package:flutter_do/layout/stack.dart';
import 'package:flutter_do/layout/wrap.dart';
import 'package:flutter_do/widget/button.dart';
import 'package:flutter_do/widget/dialog.dart';
import 'package:flutter_do/widget/form.dart';
import 'package:flutter_do/widget/gridView.dart';
import 'package:flutter_do/widget/image.dart';
import 'package:flutter_do/widget/input.dart';
import 'package:flutter_do/widget/listView.dart';
import 'package:flutter_do/widget/progress.dart';
import 'package:flutter_do/widget/switch_checkbox.dart';
import 'package:flutter_do/widget/text.dart';

class RoutePageAll {
  static const route_text = "/widget/Text";

  static const route_button = "/widget/Button";

  static const route_image = "/widget/Image";

  static const route_switchCheckbox = "/widget/Switch_Checkbox";

  static const route_progress = "/widget/Progress";

  static const route_input = "/widget/Input";

  static const route_form = "/widget/Form";

  static const route_gridView = "/widget/GridView";

  static const route_listView = "/widget/ListView";

  static const route_dialog = "/widget/Dialog";

  static const route_align = "/layout/Align";

  static const route_constrainedBox = "/layout/ConstrainedBox";

  static const route_flex_expanded = "/layout/Flex";

  static const route_row_column = "/layout/Row_Column";

  static const route_stack = "/layout/Stack";

  static const route_wrap = "/layout/Wrap";

  static const route_container = "/container/Container";

  static const route_decoratedBox = "/container/DecoratedBox";

  static const route_padding = "/container/Padding";

  static const route_scaffold = "/container/Scaffold";

  static const route_transform = "/container/Transform";
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
