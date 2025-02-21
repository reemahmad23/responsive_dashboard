import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => SizedBox(), 
        tabletLayout: (context) => SizedBox(), 
        desktopLayout:(context) => DashboardDesktopLayout(),
        ),
    );
  }
}