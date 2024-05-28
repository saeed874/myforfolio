import '../../../../styles/personal_portfolio_icons.dart';
import '../model/web_page_model.dart';
import 'iweb_repository.dart';

class MockWebPageRepository implements IWebPageRepository {
  @override
  Future<WebPageModel> getWebPageData() {
    return Future.delayed(const Duration(seconds: 2), () {
      return WebPageModel(
          icon: PersonalPortfolioIcons.iconMap['web']!,
          title: "Want to see \nMy Resume!",
          subTitle: 'Saeed Anwar Cv',
          url: '..');
    });
  }
}
