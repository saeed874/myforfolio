import '../model/twitter_page_model.dart';

abstract class ITwitterRepository {
  Future<TwitterPageModel> getTwitterPageData();
}
