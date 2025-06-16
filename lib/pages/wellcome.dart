
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './sign_in.dart';

class Wellcome extends StatelessWidget {
  static const nameRoute = "/Wellcome";
  const Wellcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         SizedBox(height: 40),
        Center(
          child: Column(
            children: [
        Text("Wellcome" , style: GoogleFonts.inter(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)),
        Text("FinPocket", style: GoogleFonts.inter(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
            ],
          ),
        ),
    SizedBox(height: 30),
      Padding(padding: EdgeInsets.all(15),
      child: Text("Take\nControl\nof Your\nFinances", style: GoogleFonts.inter(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40))),
       SizedBox(height: 40),
       Center(
        child: Text("FinPocket helps you manage income,expenses,\nand savings-effortlessly. Your Financial freedom\nstarts here",textAlign: TextAlign.center,
         style: GoogleFonts.inter(color: Colors.white,fontSize: 15)
        ),
       ),
       SizedBox(height: 40),
       Center(
        child: ElevatedButton(onPressed: () {
        Navigator.pushNamed(context, Signin.nameRoute);
       }, child: Text("Get Started", 
       style: GoogleFonts.inter(color: Colors.deepPurple,fontWeight: FontWeight.bold)
       )),
       )
       ],
      ),
    );
  }
}