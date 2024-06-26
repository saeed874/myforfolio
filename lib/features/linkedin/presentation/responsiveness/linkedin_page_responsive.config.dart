import 'package:flutter/material.dart';

import '../../../../helpers/enums.dart';
import '../../../../shared/model/iresponsiveconfig.dart';

class LinkedInPageResponsiveConfig implements IResponsiveConfig {
  final double iconSize;
  final double titleSize;
  final double subtitleSize;
  final double buttonLabelSize;
  final EdgeInsets buttonPadding;
  final EdgeInsets buttonMargin;

  LinkedInPageResponsiveConfig(
      {required this.iconSize,
      required this.titleSize,
      required this.subtitleSize,
      required this.buttonLabelSize,
      required this.buttonMargin,
      required this.buttonPadding});

  static Map<DeviceType, LinkedInPageResponsiveConfig> responsiveUI = {
    DeviceType.mobile: LinkedInPageResponsiveConfig(
      iconSize: 40,
      titleSize: 60,
      subtitleSize: 20,
      buttonLabelSize: 20,
      buttonMargin: const EdgeInsets.only(top: 20),
      buttonPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    ),
    DeviceType.tablet: LinkedInPageResponsiveConfig(
      iconSize: 60,
      titleSize: 80,
      subtitleSize: 30,
      buttonLabelSize: 20,
      buttonMargin: const EdgeInsets.only(top: 20),
      buttonPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    ),
    DeviceType.desktop: LinkedInPageResponsiveConfig(
      iconSize: 80,
      titleSize: 100,
      subtitleSize: 40,
      buttonLabelSize: 30,
      buttonMargin: const EdgeInsets.only(top: 20),
      buttonPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    ),
  };
}
