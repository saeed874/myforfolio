import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../shared/provider/shared_providers.dart';

class WebLocalStorage {
  final Ref ref;
  WebLocalStorage(this.ref);

  static const String menuSelection = 'menuSelection';
  late SharedPreferences prefs;

  Future<bool> initLocalStorage() {
    Completer<bool> localStorageCompleter = Completer();

    ref.read(sharedPrefsInstanceProvider).then((sp) {
      prefs = sp;
      localStorageCompleter.complete(true);
    });

    return localStorageCompleter.future;
  }

  void storeSelectedNav(String route) {
    prefs.setString(WebLocalStorage.menuSelection, route);
  }

  String getSelectedNav() {
    return prefs.getString(WebLocalStorage.menuSelection) ?? '';
  }
}
