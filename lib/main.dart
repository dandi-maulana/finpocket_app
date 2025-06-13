import 'package:flutter/material.dart';
import './pages/homepage.dart';
import './pages/withdraw.dart';

void main() {
  runApp(const FinPocket());
}

class FinPocket extends StatelessWidget {
  const FinPocket({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FinPocket',
      initialRoute: Homepage.nameRoute,
      routes: {
        Homepage.nameRoute: (context) => Homepage(),
        Withdraw.nameRoute: (context) => Withdraw(),
      },
    );
  }
}
