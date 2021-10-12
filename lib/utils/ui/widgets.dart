import 'package:fanoos/res/color_schema.dart';
import 'package:flutter/material.dart';

/// reference
/// https://stackoverflow.com/a/55796929/2172590
Widget getEmptyWidget() {
  return SizedBox.shrink();
}

Widget lineDivider({double? height}) {
  return Container(
    color: ColorSchema.LIGHT_GRAY_BACKGROUND_COLOR,
    width: double.infinity,
    height: height ?? 1,
  );
}
