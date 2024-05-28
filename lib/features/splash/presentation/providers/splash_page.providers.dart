import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodels/splash_page.viewmodel.dart';

final splashPageViewModelProvider = Provider((ref) {
  return SplashPageViewModel(ref);
});

final splashPageFutureProvider = FutureProvider<bool>((ref) {
  var splashVM = ref.read(splashPageViewModelProvider);
  return splashVM.preloadPages();
});
