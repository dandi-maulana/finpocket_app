import 'package:flutter/material.dart';
import './pages/homepage.dart';
import './pages/withdraw.dart';
import './pages/deposit.dart';
import './pages/profile.dart';
import './pages/add_category.dart';
import './pages/wellcome.dart';
import './pages/sign_in.dart';
import './pages/sign_up.dart';

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
      initialRoute: Wellcome.nameRoute,
      routes: {
        Homepage.nameRoute: (context) => Homepage(),
        Withdraw.nameRoute: (context) => Withdraw(),
        Profile.nameRoute: (context) => Profile(),
        Deposit.nameRoute: (context) => Deposit(),
        AddCategory.nameRoute: (context) => AddCategory(),
        Wellcome.nameRoute: (context) => Wellcome(),
        Signin.nameRoute: (context) => Signin(),
        Signup.nameRoute: (context) => Signup()
      },
    );
  }
}
