import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../features/github/presentation/pages/github.page.dart';
import '../features/linkedin/presentation/pages/linkedin.page.dart';
import '../features/twitter/presentation/pages/twitter.page.dart';
import '../features/web/presentation/pages/web.page.dart';
import '../features/welcome/presentation/pages/welcome.page.dart';
import 'enums.dart';

class Utils {
  static GlobalKey<NavigatorState> mainNav = GlobalKey();
  static GlobalKey<NavigatorState> tabNav = GlobalKey();
  static GlobalKey<ScaffoldState> mainScaffold = GlobalKey();

  static void launchUrlLink(String url) async {
    await launchUrl(Uri.parse(url));
  }

  static Map<String, BackgroundAnimations> pageRouteToAnimations = {
    WelcomePage.route: BackgroundAnimations.welcome,
    TwitterPage.route: BackgroundAnimations.twitter,
    LinkedInPage.route: BackgroundAnimations.linkedin,
    GithubPage.route: BackgroundAnimations.github,
    WebPage.route: BackgroundAnimations.web
  };
}
