import 'package:flutter/material.dart';
import 'package:saeedanwarportfolio/shared/widgets/bganimation.dart';
import 'package:saeedanwarportfolio/shared/widgets/pagecolor.dart';

import '../../../../helpers/responsive_ui_helper.dart';
import '../../../../helpers/utills.dart';
import '../../../../styles/colors.dart';
import '../../../navigation/presentation/responsiveness/navigation_responsive.config.dart';
import '../../../navigation/presentation/widgets/left_navigation.dart';
import '../../../navigation/presentation/widgets/side_navigation_drawer.dart';

class PortfolioMainPage extends StatelessWidget {
  static const String route = '/main';

  final Widget child;
  const PortfolioMainPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: Utils.mainScaffold,
        drawer: const SideNavigationDrawer(),
        backgroundColor: PersonalPortfolioColors.mainBlue,
        body: Builder(builder: (context) {
          var navUIConfig = NavigationResponsiveConfig
              .responsiveUI[ResponsiveUIHelper.getDeviceType(context)]!;

          if (!navUIConfig.showSideBar &&
              Utils.mainScaffold.currentState!.isDrawerOpen) {
            Utils.mainScaffold.currentState!.closeDrawer();
          }

          return Stack(
            children: [
              const PageColor(),
              const BgAnimation(),
              Center(child: child),
              const Align(
                alignment: Alignment.centerLeft,
                child: LeftNavigation(),
              ),
            ],
          );
        }));
  }
}
