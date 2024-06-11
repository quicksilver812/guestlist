import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guestlist/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginPage(),
        ));
  }
}
