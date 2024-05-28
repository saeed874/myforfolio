import '../../data/model/twitter_page_model.dart';
import '../../data/repositories/itwitter_repository.dart';

class TwitterPageViewModel {
  final ITwitterRepository twitterRepository;

  TwitterPageViewModel(this.twitterRepository);

  Future<TwitterPageModel> getTwitterData() async {
    var twitterPageData = await twitterRepository.getTwitterPageData();
    return twitterPageData;
  }
}
