import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../helpers/utills.dart';
import '../../../../shared/widgets/error_notification.dart';
import '../../../../styles/colors.dart';
import '../../../welcome/presentation/pages/welcome.page.dart';
import '../providers/splash_page.providers.dart';
import '../widgets/splash_loading.dart';

class SplashPage extends ConsumerWidget {
  static const String route = '/splash';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var splashFuture = ref.watch(splashPageFutureProvider);
    var loadingMessage = const SplashLoading(
        message: 'Loading an awesome,\nKick-ass Profile...');

    return Scaffold(
        backgroundColor: PersonalPortfolioColors.mainBlue,
        body: splashFuture.when(
          loading: () => loadingMessage,
          error: (error, stackTrace) =>
              ErrorNotification(message: error.toString()),
          data: (data) {
            Future.delayed(1.seconds, () {
              GoRouter.of(Utils.mainNav.currentContext!).go(WelcomePage.route);
            });

            return loadingMessage;
          },
        ));
  }
}
