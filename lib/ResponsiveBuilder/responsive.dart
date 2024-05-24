import 'package:flutter/material.dart';
import 'package:responsive_design/ResponsiveBuilder/desktopLayout.dart';
import 'package:responsive_design/ResponsiveBuilder/mobileLayout.dart';

class ResponsiveLayout extends StatefulWidget {
  const ResponsiveLayout({super.key});

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return size.width > 450
              ? const DesktopLayout()
              : const mobileLayout();
        },
      ),
    );
  }
}
