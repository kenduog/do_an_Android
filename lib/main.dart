import 'package:flutter/material.dart';
import 'package:saigon_store/routes.dart';
import 'package:saigon_store/screens/profile/profile_screen.dart';
import 'package:saigon_store/screens/splash/splash_screen.dart';
import 'package:saigon_store/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Saigon Store',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
