import '../../../../helpers/enums.dart';
import '../../../../shared/model/iresponsiveconfig.dart';

class NavigationResponsiveConfig implements IResponsiveConfig {
  final bool showSideBar;

  NavigationResponsiveConfig({required this.showSideBar});

  static Map<DeviceType, NavigationResponsiveConfig> responsiveUI = {
    DeviceType.mobile: NavigationResponsiveConfig(showSideBar: false),
    DeviceType.tablet: NavigationResponsiveConfig(showSideBar: true),
    DeviceType.desktop: NavigationResponsiveConfig(showSideBar: true),
  };
}
