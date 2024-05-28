import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../helpers/enums.dart';
import '../../../../shared/provider/shared_providers.dart';
import '../model/web_page_model.dart';
import 'iweb_repository.dart';

class WebPageRepository implements IWebPageRepository {
  final Ref ref;
  WebPageRepository(this.ref);

  @override
  Future<WebPageModel> getWebPageData() {
    return ref.read(dbProvider).getPageDataFromDB(WebPageModel.fromDatabase,
        DatabaseCollections.pageContent.name, DatabaseDocs.webPage.name);
  }
}
