import '../model/welcome_page_model.dart';

abstract class IWelcomeRepository {
  Future<WelcomePageModel> getWelcomePageData();
}
