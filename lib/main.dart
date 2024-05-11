import 'package:flutter/material.dart';
import 'package:near_care/presentation/screens/Login.dart';
import 'package:near_care/presentation/screens/My_Home_Page.dart';
import 'package:near_care/presentation/screens/Video_Streem.dart';
import 'package:near_care/presentation/screens/call_view.dart';
import 'package:near_care/presentation/screens/details.dart';

void main() {
  runApp(const NearCare());
}

class NearCare extends StatelessWidget {
  const NearCare({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LogInScreen(),
        'MyHomePage': (context) => const MyHomePage(),
        'DetailsScreen': (context) => const DetailsScreen(),
        'CallViewScreen': (context) => const CallViewScreen(),
        'VideoStreemScreen': (context) => const VideoStreemScreen(),
      },
    );
  }
}
