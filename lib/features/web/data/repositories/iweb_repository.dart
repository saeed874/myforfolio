import '../model/web_page_model.dart';

abstract class IWebPageRepository {
  Future<WebPageModel> getWebPageData();
}
