import 'package:flutter/material.dart';
import 'package:near_care/My_Home_Page.dart';
import 'package:near_care/Video_Streem.dart';
import 'package:near_care/call_view.dart';
import 'package:near_care/details.dart';

void main() {
  runApp(const NearCare());
}

class NearCare extends StatelessWidget {
  const NearCare({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'VideoStreemScreen',
      routes: {
        'MyHomePage': (context) => const MyHomePage(),
        'DetailsScreen': (context) => const DetailsScreen(),
        'CallViewScreen': (context) => const CallViewScreen(),
        'VideoStreemScreen': (context) => const VideoStreemScreen(),
      },
    );
  }
}
