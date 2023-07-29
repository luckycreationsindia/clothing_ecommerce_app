import 'package:clothing_ecommerce_app/utils/constants.dart';
import 'package:clothing_ecommerce_app/utils/main_theme.dart';
import 'package:clothing_ecommerce_app/utils/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: Constants.title,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Gordita',
          colorScheme: ColorScheme.fromSeed(
            seedColor: MainTheme.mainTheme,
            primary: MainTheme.mainTheme.shade500,
            background: const Color(0xFFFBFBFD),
          ),
          useMaterial3: true,
        ),
        routerConfig: router);
  }
}
