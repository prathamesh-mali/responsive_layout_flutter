import 'package:flutter/material.dart';
import 'package:responsive_design/ResponsiveBuilder/responsive.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ResponsiveLayout(),
    );
  }
}
