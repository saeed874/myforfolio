import '../../../../styles/personal_portfolio_icons.dart';
import '../model/linkedin_page_model.dart';
import 'ilinkedin_repository.dart';

class MockLinkedInRepository implements ILinkedInRepository {
  @override
  Future<LinkedInPageModel> getLinkedInPageData() {
    return Future.delayed(const Duration(seconds: 2), () {
      return LinkedInPageModel(
          icon: PersonalPortfolioIcons.iconMap['linkedin']!,
          title: "Let's\nConnect",
          subTitle: 'on LinkedIn',
          url: 'http://linkedin.com/in/saeed-anwar-282a14203');
    });
  }
}
