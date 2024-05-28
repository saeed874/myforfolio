import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/igithub_repository.dart';
import '../../data/repositories/mock_github_repository.dart';
import '../viewmodels/github_page.viewmodel.dart';

final githubRepositoryProvider = Provider<IGithubRepository>((ref) {
  //return GithubRepository(ref);
  return MockGithubRepository();
});

final githubViewModelProvider = Provider<GithubPageViewModel>((ref) {
  var repository = ref.read(githubRepositoryProvider);
  return GithubPageViewModel(repository);
});

final githubProvider = FutureProvider((ref) {
  final githubVM = ref.read(githubViewModelProvider);
  return githubVM.getGithubPageData();
});
