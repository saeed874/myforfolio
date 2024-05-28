import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:saeedanwarportfolio/features/navigation/presentation/viewmodels/leftnavigation.viewmodel.dart';

import '../../data/model/left_navigation_item.dart';
import '../../data/repositories/inavigation.repository.dart';
import '../../data/repositories/mock_navigation.repository.dart';

final navigationRepositoryProvider = Provider<INavigationRepository>((ref) {
  return MockNavigationRepository();
});

final navigationItemsProvider = Provider<List<LeftNavigationItem>>((ref) {
  return ref.read(navigationRepositoryProvider).getDefaultNavItems();
});

final navigationItemsViewModelProvider =
    StateNotifierProvider<LeftNavigationViewModel, List<LeftNavigationItem>>(
        (ref) {
  var items = ref.read(navigationItemsProvider);
  return LeftNavigationViewModel(items, ref);
});
