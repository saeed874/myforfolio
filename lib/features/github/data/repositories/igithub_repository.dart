import '../model/github_page_model.dart';

abstract class IGithubRepository {
  Future<GithubPageModel> getGithubPageData();
}
