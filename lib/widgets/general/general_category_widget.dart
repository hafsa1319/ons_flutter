import 'package:flutter/material.dart';

import '../../common/config/models/general_setting_item.dart';
import 'general_widget.dart';

class GeneralCategoryWidget extends GeneralWidget {
  const GeneralCategoryWidget(
      {required GeneralSettingItem? item,
      Color? iconColor,
      TextStyle? textStyle,
      bool useTile = false,
      Function()? onNavigator})
      : super(
          onNavigator: onNavigator,
          item: item,
          iconColor: iconColor,
          textStyle: textStyle,
          useTile: useTile,
        );

  @override
  void onTap(BuildContext context) {
    if (item?.category != null) {
      onTapNavigateOptions(context: context, config: {
        'category': item?.category,
      });
    }
  }
}
