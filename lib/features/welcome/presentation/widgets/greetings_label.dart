import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:saeedanwarportfolio/features/welcome/presentation/responsiveness/welcome_page_responsive.config.dart';
import 'package:saeedanwarportfolio/helpers/responsive_ui_helper.dart';

import '../providers/welcome_page.providers.dart';
import '../viewmodels/welcome_page.viewmodel.dart';

class GreetingsLabel extends ConsumerStatefulWidget {
  const GreetingsLabel({super.key});
  @override
  GreetingsLabelState createState() => GreetingsLabelState();
}

class GreetingsLabelState extends ConsumerState<GreetingsLabel> {
  late GreetingsViewModel vm;

  @override
  void initState() {
    super.initState();
    vm = ref.read(greetingsViewModelProvider.notifier);
    vm.initializeGreetings();
  }

  @override
  void dispose() {
    vm.resetTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var uiConfig = context.uiConfig<WelcomePageResponsiveConfig>();

    var greeting = ref.watch(greetingsViewModelProvider);
    // log("..........$greetingsViewModelProvider");

    return Text(greeting,
        style: TextStyle(
            fontSize: uiConfig.titleSize,
            fontWeight: FontWeight.bold,
            color: Colors.white));
  }
}
