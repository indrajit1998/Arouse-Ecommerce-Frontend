import 'package:arouseautomotive/designLayoutsPage/mobiledesign.dart';
import 'package:arouseautomotive/designLayoutsPage/webdesign.dart';
import 'package:arouseautomotive/login_button.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

class HomepageAutomotive extends StatelessWidget {
  const HomepageAutomotive({super.key});

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb && Platform.isAndroid) {
      // Native Android app
      return const LoginButton();
    } else {
      // Web, iOS, Desktop, or Tablet
      return const Webdesign();
    }
  }
}
