import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:saeedanwarportfolio/features/twitter/presentation/viewmodels/twitter_page.viewmodel.dart';

import '../../data/repositories/itwitter_repository.dart';
import '../../data/repositories/mock_twitter_repository.dart';

final twitterRepositoryProvider = Provider<ITwitterRepository>((ref) {
  return MockTwitterRepository();
  //return TwitterRepository(ref);
});

final twitterViewModelProvider = Provider<TwitterPageViewModel>((ref) {
  var repository = ref.read(twitterRepositoryProvider);
  return TwitterPageViewModel(repository);
});

final twitterProvider = FutureProvider((ref) {
  final twitterVM = ref.read(twitterViewModelProvider);
  return twitterVM.getTwitterData();
});
