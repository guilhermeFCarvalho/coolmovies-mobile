import 'package:coolmovies/app/core/routes/routes.dart';
import 'package:coolmovies/app/core/shared/style/app_colors.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'coolmovies',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
      ),
      themeMode: ThemeMode.dark,
      routerConfig: routes,
    );
  }
}
