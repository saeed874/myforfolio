import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../helpers/enums.dart';
import '../../../../shared/provider/shared_providers.dart';
import '../model/github_page_model.dart';
import 'igithub_repository.dart';

class GithubRepository implements IGithubRepository {
  final Ref ref;
  GithubRepository(this.ref);

  @override
  Future<GithubPageModel> getGithubPageData() {
    return ref.read(dbProvider).getPageDataFromDB(GithubPageModel.fromDatabase,
        DatabaseCollections.pageContent.name, DatabaseDocs.githubPage.name);
  }
}
