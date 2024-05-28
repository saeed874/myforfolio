import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../helpers/enums.dart';
import '../../../../shared/provider/shared_providers.dart';
import '../model/twitter_page_model.dart';
import 'itwitter_repository.dart';

class TwitterRepository implements ITwitterRepository {
  final Ref ref;
  TwitterRepository(this.ref);

  @override
  Future<TwitterPageModel> getTwitterPageData() {
    return ref.read(dbProvider).getPageDataFromDB(TwitterPageModel.fromDatabase,
        DatabaseCollections.pageContent.name, DatabaseDocs.twitterPage.name);
  }
}
