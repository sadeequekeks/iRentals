import 'package:flutter/material.dart';
// import 'package:rentals/module/views/auth/login_screen.dart';
import 'package:sizer/sizer.dart';

import 'module/views/onboarding_screen/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Rentals',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 58, 179, 183)),
          useMaterial3: true,
        ),
        home: const OnboardingScreen(),
      );
    });
  }
}
