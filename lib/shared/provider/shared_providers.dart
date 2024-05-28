import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/welcome/presentation/pages/welcome.page.dart';
import '../../services/localstorage_service.dart';
import '../../styles/colors.dart';
import '../repositories/database_provider.dart';
import '../repositories/idb_provider.dart';

final pageColorProvider = StateProvider<LinearGradient>((ref) {
  return PersonalPortfolioColors.pageColor[WelcomePage.route]!;
});

final bgPageRouteProvider = StateProvider<String>((ref) {
  return WelcomePage.route;
});

final firebaseDbInstanceProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});

final dbProvider = Provider<IDBProvider>((ref) {
  return DatabaseProvider(ref);
});

final sharedPrefsInstanceProvider = Provider((ref) {
  return SharedPreferences.getInstance();
});

final webLocalStorageProvider = Provider((ref) {
  return WebLocalStorage(ref);
});
