import '../../../../styles/personal_portfolio_icons.dart';
import '../model/twitter_page_model.dart';
import 'itwitter_repository.dart';

class MockTwitterRepository implements ITwitterRepository {
  @override
  Future<TwitterPageModel> getTwitterPageData() {
    return Future.delayed(const Duration(seconds: 2), () {
      return TwitterPageModel(
          icon: PersonalPortfolioIcons.iconMap['twitter']!,
          title: 'Follow me',
          subTitle: 'on Twitter',
          handle: '@itssaeed5',
          url: 'https://twitter.com/Itssaeed5');
    });
  }
}
