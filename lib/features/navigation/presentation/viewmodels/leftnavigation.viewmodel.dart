import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../helpers/utills.dart';
import '../../../../shared/provider/shared_providers.dart';
import '../../../../styles/colors.dart';
import '../../data/model/left_navigation_item.dart';

class LeftNavigationViewModel extends StateNotifier<List<LeftNavigationItem>> {
  final Ref ref;

  LeftNavigationViewModel(List<LeftNavigationItem> items, this.ref)
      : super([]) {
    state = items;
  }

  void init() {
    var selectedNavRoute = ref.read(webLocalStorageProvider).getSelectedNav();

    if (selectedNavRoute.isNotEmpty) {
      var item = state.where((i) => i.route == selectedNavRoute).first;
      selectNavItem(item);
    } else {
      selectNavItem(state.first);
    }
  }

  void selectNavItem(LeftNavigationItem item) {
    if (item.route.isNotEmpty) {
      GoRouter.of(Utils.tabNav.currentContext!).go(item.route);
    }

    ref.read(pageColorProvider.notifier).state =
        PersonalPortfolioColors.pageColor[item.route]!;
    ref.read(bgPageRouteProvider.notifier).state = item.route;
    ref.read(webLocalStorageProvider).storeSelectedNav(item.route);

    state = [
      for (var element in state) element.copyWith(isSelected: item == element)
    ];
  }
}
