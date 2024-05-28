import '../../../../styles/personal_portfolio_icons.dart';
import '../../../github/presentation/pages/github.page.dart';
import '../../../linkedin/presentation/pages/linkedin.page.dart';
import '../../../twitter/presentation/pages/twitter.page.dart';
import '../../../web/presentation/pages/web.page.dart';
import '../../../welcome/presentation/pages/welcome.page.dart';
import '../model/left_navigation_item.dart';
import 'inavigation.repository.dart';

class MockNavigationRepository implements INavigationRepository {
  @override
  List<LeftNavigationItem> getDefaultNavItems() {
    return [
      LeftNavigationItem(
          icon: PersonalPortfolioIcons.user,
          label: 'My Profile',
          route: WelcomePage.route,
          isSelected: true),
      LeftNavigationItem(
          icon: PersonalPortfolioIcons.twitter,
          label: 'Twitter',
          route: TwitterPage.route,
          isSelected: false),
      LeftNavigationItem(
          icon: PersonalPortfolioIcons.linkedin,
          label: 'LinkedIn',
          route: LinkedInPage.route,
          isSelected: false),
      LeftNavigationItem(
          icon: PersonalPortfolioIcons.web,
          label: 'Web',
          route: WebPage.route,
          isSelected: false),
      LeftNavigationItem(
          icon: PersonalPortfolioIcons.github,
          label: 'Github',
          route: GithubPage.route,
          isSelected: false),
    ];
  }
}
