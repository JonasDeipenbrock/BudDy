import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mainMenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'BudDy';

  @override
  Widget build(BuildContext context) {
    //sets orientation to only allow landscape
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return MaterialApp(
      title: _title,
      home: MainMenuNavigation(),
    );
  }
}
