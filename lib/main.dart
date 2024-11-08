import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ncnc_flutter/const/color.dart';
import 'package:ncnc_flutter/screen/home_screen.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:  const HomeScreen(),
        theme: ThemeData(scaffoldBackgroundColor: grey)
    );
  }
}