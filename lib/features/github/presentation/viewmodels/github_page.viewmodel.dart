import '../../data/model/github_page_model.dart';
import '../../data/repositories/igithub_repository.dart';

class GithubPageViewModel {
  final IGithubRepository githubRepository;

  GithubPageViewModel(this.githubRepository);

  Future<GithubPageModel> getGithubPageData() async {
    var githubPageData = await githubRepository.getGithubPageData();
    return githubPageData;
  }
}
