import 'package:arouseautomotive/designLayoutsPage/webdesign.dart';
import 'package:arouseautomotive/login_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class HomepageAutomotive extends StatelessWidget {
  const HomepageAutomotive({super.key});

  @override
  Widget build(BuildContext context) {
    Widget child;

    if (kIsWeb) {
      child = Webdesign();
    } else if (Platform.isAndroid || Platform.isIOS) {
      child = LoginButton();
    } else if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      child = Webdesign();
    } else {
      child = Center(child: Text('Unsupported platform'));
    }

    return Scaffold(
      body: child,
    );
  }
}