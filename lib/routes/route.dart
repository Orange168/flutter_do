import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/container/blur.dart';
import 'package:flutter_do/container/clip.dart';
import 'package:flutter_do/container/constrainedBox.dart';
import 'package:flutter_do/container/container.dart';
import 'package:flutter_do/container/decoratedBox.dart';
import 'package:flutter_do/container/flex.dart';
import 'package:flutter_do/container/padding.dart';
import 'package:flutter_do/container/row_column.dart';
import 'package:flutter_do/container/scaffold.dart';
import 'package:flutter_do/container/stack.dart';
import 'package:flutter_do/container/transform.dart';
import 'package:flutter_do/container/wrap.dart';
import 'package:flutter_do/customWidget/CustomPaintPage.dart';
import 'package:flutter_do/customWidget/GradientButton.dart';
import 'package:flutter_do/fun/gestureDetector.dart';
import 'package:flutter_do/fun/inheritedWidget.dart';
import 'package:flutter_do/fun/listener.dart';
import 'package:flutter_do/fun/willPopScope.dart';
import 'package:flutter_do/container/align.dart';
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
  {"/widget/SimpleListView": SimpleListViewPage()},
  {"/widget/ListView": ListViewPage()},
  {"/widget/SimpleGridView": SimpleGridViewPage()},
  {"/widget/GridView": GridViewPage()},
  {"/widget/Dialog": DialogPage()},

  {"/container/Scaffold": ScaffoldPage()},
  {"/container/ConstrainedBox": ConstrainedBoxPage()},
  {"/container/DecoratedBox": DecoratedBoxPage()},
  {"/container/RowColumn": RowColumnPage()},
  {"/container/Flex": FlexExpandedPage()},
  {"/container/Container": ContainerPage()},
  {"/container/Align": AlignPage()},
  {"/container/Padding": PaddingPage()},
  {"/container/Wrap": WrapPage()},
  {"/container/Stack": StackPage()},

  {"/fun/Transform": TransformPage()},
  {"/fun/Blur": BlurPage()},
  {"/fun/Clip": ClipPage()},
  {"/fun/WillPopScope": WillPopScopePage()},
  {"/fun/InheritedWidget": InheritedWidgetPage()},
  {"/fun/GestureDetector": GestureDetectorPage()},
  {"/fun/Listener": ListenerPage()},

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
  "/widget/SimpleListView": Icons.format_list_bulleted,
  "/widget/ListView": Icons.format_list_numbered_rtl,
  "/widget/SimpleGridView": Icons.grid_on,
  "/widget/GridView": Icons.grid_off,
  "/widget/Dialog": Icons.map,
  "/container/RowColumn": Icons.view_column,
  "/container/Flex": Icons.aspect_ratio,
  "/container/Align": Icons.format_align_center,
  "/container/Wrap": Icons.wrap_text,
  "/container/Stack": Icons.vertical_align_center,
  "/container/ConstrainedBox": Icons.inbox,
  "/container/Padding": Icons.crop,
  "/container/Container": Icons.edit_location,
  "/container/Scaffold": Icons.wifi_tethering,
  "/container/DecoratedBox": Icons.markunread_mailbox,
  "/fun/Blur": Icons.blur_on,
  "/fun/Clip": Icons.all_inclusive,
  "/fun/Transform": Icons.directions_transit,
  "/fun/WillPopScope": Icons.arrow_back,
  "/fun/InheritedWidget": Icons.data_usage,
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
