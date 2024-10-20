import 'package:flutter/material.dart';
import 'package:ncnc_flutter/components/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Home',
        isHomeScreen: true,
      ),
      body: Center(
        child: Text('Welcome to Home Screen'),
      ),
    );
  }
}
