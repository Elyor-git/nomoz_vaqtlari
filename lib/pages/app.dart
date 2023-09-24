
import 'package:flutter/material.dart';
import 'home_scrren/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      title: "Weather G8",
      home: const HomeScreen(),
    );
  }
}
