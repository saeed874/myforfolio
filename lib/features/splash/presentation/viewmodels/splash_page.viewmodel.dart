import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../github/presentation/providers/github_page.providers.dart';
import '../../../linkedin/presentation/providers/linkedin_page.providers.dart';
import '../../../twitter/presentation/providers/twitter_page.providers.dart';
import '../../../web/presentation/providers/web_page.providers.dart';
import '../../../welcome/presentation/providers/welcome_page.providers.dart';

class SplashPageViewModel {
  final Ref ref;

  SplashPageViewModel(this.ref);

  Future<bool> preloadPages() {
    Completer<bool> preloadCompleter = Completer();

    Future.wait([
      ref.read(welcomeProvider.future),
      ref.read(twitterProvider.future),
      ref.read(linkedInProvider.future),
      ref.read(githubProvider.future),
      ref.read(webpageProvider.future),
    ]).then((value) {
      preloadCompleter.complete(true);
    }).catchError((error) {
      preloadCompleter.completeError(error);
    }).onError((error, stackTrace) {
      preloadCompleter.completeError(error!);
    });

    return preloadCompleter.future;
  }
}
