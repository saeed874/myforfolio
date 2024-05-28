import '../../data/model/linkedin_page_model.dart';
import '../../data/repositories/ilinkedin_repository.dart';

class LinkedInPageViewModel {
  final ILinkedInRepository linkedinRepository;

  LinkedInPageViewModel(this.linkedinRepository);

  Future<LinkedInPageModel> getLinkedInPageData() async {
    var linkedInPageData = await linkedinRepository.getLinkedInPageData();
    return linkedInPageData;
  }
}
