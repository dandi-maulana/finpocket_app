import 'package:flutter/material.dart';

class Deposit extends StatelessWidget {
  static const nameRoute = "/Deposit";
  const Deposit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(50, 50),
        child: AppBar(
          title: Text("Deposit"),
          backgroundColor: Colors.deepPurpleAccent,
        ),
      ),
    );
  }
}
