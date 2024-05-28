import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../helpers/enums.dart';
import '../../../../shared/provider/shared_providers.dart';
import '../model/welcome_page_model.dart';
import 'iwelcome_repository.dart';

class WelcomeRepository implements IWelcomeRepository {
  final Ref ref;

  WelcomeRepository(this.ref);

  @override
  Future<WelcomePageModel> getWelcomePageData() {
    return ref.read(dbProvider).getPageDataFromDB(WelcomePageModel.fromDatabase,
        DatabaseCollections.pageContent.name, DatabaseDocs.welcomePage.name);
  }
}
