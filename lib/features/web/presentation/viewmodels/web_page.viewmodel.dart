import 'package:saeedanwarportfolio/features/web/data/model/web_page_model.dart';

import '../../data/repositories/iweb_repository.dart';

class WebPageViewModel {
  final IWebPageRepository webPageRepository;

  WebPageViewModel(this.webPageRepository);

  Future<WebPageModel> getWebPageData() async {
    var webPageData = await webPageRepository.getWebPageData();
    return webPageData;
  }
}
