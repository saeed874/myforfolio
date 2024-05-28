import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/iweb_repository.dart';
import '../../data/repositories/mock_web_repository.dart';
import '../viewmodels/web_page.viewmodel.dart';

final webRepositoryProvider = Provider<IWebPageRepository>((ref) {
  return MockWebPageRepository();
  //return WebPageRepository(ref);
});

final webPageViewModelProvider = Provider<WebPageViewModel>((ref) {
  var repository = ref.read(webRepositoryProvider);
  return WebPageViewModel(repository);
});

final webpageProvider = FutureProvider((ref) {
  final webVM = ref.read(webPageViewModelProvider);
  return webVM.getWebPageData();
});
