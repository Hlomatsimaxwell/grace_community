import 'package:flutter/material.dart';
import 'navigation_screen.dart';

void main() {
  runApp(const GraceCommunityApp());
}

class GraceCommunityApp extends StatelessWidget {
  const GraceCommunityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grace Community',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
        ),
      ),
      home: const MainNavigationScreen(),
    );
  }
}