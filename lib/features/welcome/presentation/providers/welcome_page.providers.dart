import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/iwelcome_repository.dart';
import '../../data/repositories/mock_welcome_repository.dart';
import '../viewmodels/welcome.viewmodel.dart';
import '../viewmodels/welcome_page.viewmodel.dart';

final greetingsRawListProvider = StateProvider<List<String>>((ref) {
  return [];
});

final greetingsViewModelProvider =
    StateNotifierProvider<GreetingsViewModel, String>((ref) {
  var greetings = ref.watch(greetingsRawListProvider);
  return GreetingsViewModel(greetings.first, greetings);
});

final welcomeRepositoryProvider = Provider<IWelcomeRepository>((ref) {
  return MockWelcomeRepository();
  //return WelcomeRepository(ref);
});

final welcomeViewModelProvider = Provider<WelcomePageViewModel>((ref) {
  var repository = ref.read(welcomeRepositoryProvider);
  return WelcomePageViewModel(repository, ref);
});

final welcomeProvider = FutureProvider((ref) {
  final welcomeVM = ref.read(welcomeViewModelProvider);
  return welcomeVM.getWelcomePageData();
});
