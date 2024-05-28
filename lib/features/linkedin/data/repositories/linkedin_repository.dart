import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../helpers/enums.dart';
import '../../../../shared/provider/shared_providers.dart';
import '../model/linkedin_page_model.dart';
import 'ilinkedin_repository.dart';

class LinkedInRepository implements ILinkedInRepository {
  final Ref ref;
  LinkedInRepository(this.ref);

  @override
  Future<LinkedInPageModel> getLinkedInPageData() {
    return ref.read(dbProvider).getPageDataFromDB(
        LinkedInPageModel.fromDatabase,
        DatabaseCollections.pageContent.name,
        DatabaseDocs.linkedInPage.name);
  }
}
