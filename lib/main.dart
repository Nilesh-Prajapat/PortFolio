import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/theme/theme.dart';
import 'pages/NAV/navView.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PortFolio',
      theme: MyAppTheme.MyTheme,
      home: const NavView(),
    );
  }
}
