import '../../../../styles/personal_portfolio_icons.dart';
import '../model/github_page_model.dart';
import 'igithub_repository.dart';

class MockGithubRepository implements IGithubRepository {
  @override
  Future<GithubPageModel> getGithubPageData() {
    return Future.delayed(const Duration(seconds: 2), () {
      return GithubPageModel(
          icon: PersonalPortfolioIcons.iconMap['github']!,
          title: 'Check out\nMy Repos',
          subTitle: 'on Github',
          url: 'https://github.com/saeedanwar855');
    });
  }
}
