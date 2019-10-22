import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/container/clip.dart';
import 'package:flutter_do/container/container.dart';
import 'package:flutter_do/container/decoratedBox.dart';
import 'package:flutter_do/container/padding.dart';
import 'package:flutter_do/container/scaffold.dart';
import 'package:flutter_do/container/transform.dart';
import 'package:flutter_do/customWidget/CustomPaintPage.dart';
import 'package:flutter_do/customWidget/GradientButton.dart';
import 'package:flutter_do/fun/gestureDetector.dart';
import 'package:flutter_do/fun/inheritedWidget.dart';
import 'package:flutter_do/fun/listener.dart';
import 'package:flutter_do/fun/willPopScope.dart';
import 'package:flutter_do/layout/align.dart';
import 'package:flutter_do/layout/constrainedBox.dart';
import 'package:flutter_do/layout/flex.dart';
import 'package:flutter_do/layout/row_column.dart';
import 'package:flutter_do/layout/stack.dart';
import 'package:flutter_do/layout/wrap.dart';
import 'package:flutter_do/model/category.dart';
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

final List<Map<String, Widget>> pathToWidgetMap = [
  {"/widget/Text": TextPage()},
  {"/widget/Button": ButtonPage()},
  {"/widget/Image": ImagePage()},
  {"/widget/SwitchCheckbox": SwitchCheckboxPage()},
  {"/widget/Progress": ProgressPage()},
  {"/widget/Input": InputPage()},
  {"/widget/Form": FormPage()},
  {"/widget/ListView": ListViewPage()},
  {"/widget/GridView": GridViewPage()},
  {"/widget/Dialog": DialogPage()},
  {"/layout/RowColumn": RowColumnPage()},
  {"/layout/Flex": FlexExpandedPage()},
  {"/layout/Align": AlignPage()},
  {"/layout/Wrap": WrapPage()},
  {"/layout/Stack": StackPage()},
  {"/layout/ConstrainedBox": ConstrainedBoxPage()},
  {"/container/Padding": PaddingPage()},
  {"/container/Container": ContainerPage()},
  {"/container/Scaffold": ScaffoldPage()},
  {"/container/Clip": ClipPage()},
  {"/container/DecoratedBox": DecoratedBoxPage()},
  {"/container/Transform": TransformPage()},
  {"/fun/WillPopScope": WillPopScopePage()},
  {"/fun/InheritedWidget": InheritedWidgetPage()},
  {"/fun/Listener": ListenerPage()},
  {"/fun/GestureDetector": GestureDetectorPage()},
  {"/customWidget/GradientButton": GradientButtonPage()},
  {"/customWidget/CustomPaint": CustomPaintPage()},
];

final Map<String, IconData> icons = {
  "/widget/Text": Icons.text_format,
  "/widget/Button": Icons.aspect_ratio,
  "/widget/Image": Icons.image,
  "/widget/SwitchCheckbox": Icons.check_box,
  "/widget/Progress": Icons.access_time,
  "/widget/Input": Icons.input,
  "/widget/Form": Icons.format_color_text,
  "/widget/ListView": Icons.list,
  "/widget/GridView": Icons.grid_on,
  "/widget/Dialog": Icons.map,
  "/layout/RowColumn": Icons.view_column,
  "/layout/Flex": Icons.aspect_ratio,
  "/layout/Align": Icons.format_align_center,
  "/layout/Wrap": Icons.wrap_text,
  "/layout/Stack": Icons.vertical_align_center,
  "/layout/ConstrainedBox": Icons.inbox,
  "/container/Padding": Icons.crop,
  "/container/Container": Icons.edit_location,
  "/container/Scaffold": Icons.wifi_tethering,
  "/container/Clip": Icons.all_inclusive,
  "/container/DecoratedBox": Icons.markunread_mailbox,
  "/container/Transform": Icons.directions_transit,
  "/fun/WillPopScope": Icons.arrow_back,
  "/fun/InheritedWidget": Icons.share,
  "/fun/Listener": Icons.screen_share,
  "/fun/GestureDetector": Icons.gesture,
  "/customWidget/GradientButton": Icons.gradient,
  "/customWidget/CustomPaint": Icons.swap_horizontal_circle,
};

String getWidgetCategory(String routePath) {
  List<String> temp = routePath.split("/");
  if (temp.length > 0) {
    return temp[1];
  }
  return "";
}

String getWidgetTag(String routePath) {
  List<String> temp = routePath.split("/");
  if (temp.length > 0) {
    return temp[temp.length - 1];
  }
  return "";
}

List<CategoryBean> getCategoryList() {
  List<CategoryBean> categoryBeanList = [];
  CategoryBean categoryContains(String category) {
    for (var value in categoryBeanList) {
      if (value.name == category) {
        return value;
      }
    }
    return null;
  }

  pathToWidgetMap.forEach((element) {
    element.forEach((path, widget) {
      WidgetBean widgetBean = new WidgetBean(getWidgetTag(path), path);
      var category = getWidgetCategory(path);
      var bean = categoryContains(category);
      if (bean == null) {
        CategoryBean categoryBean =
            new CategoryBean(category, []..add(widgetBean));
        categoryBeanList.add(categoryBean);
      } else {
        bean.children.add(widgetBean);
      }
    });
  });
  return categoryBeanList;
}
