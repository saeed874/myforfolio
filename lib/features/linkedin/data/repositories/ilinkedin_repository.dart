import '../model/linkedin_page_model.dart';

abstract class ILinkedInRepository {
  Future<LinkedInPageModel> getLinkedInPageData();
}
