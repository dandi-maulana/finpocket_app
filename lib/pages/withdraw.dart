import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Withdraw extends StatelessWidget {
  static const nameRoute = "/Withdraw";
  const Withdraw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(50, 50),
        child: AppBar(
          foregroundColor: Colors.white,
          title: Text(
            "FinPocket Withdraw",
            style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.deepPurpleAccent,
        ),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.deepPurpleAccent, width: 2.0),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              Text("Withdraw Balance"),
              SizedBox(height: 20),
              SizedBox(height: 20),
              TextField(
                textCapitalization: TextCapitalization.characters,
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurple),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: Icon(Icons.category, color: Colors.deepPurple),
                  label: Text(
                    "Category Name",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  hintText: "Enter Category Name...",
                  hintStyle: TextStyle(
                    color: Colors.deepPurple,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.account_balance,
                    color: Colors.deepPurple,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurple),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  label: Text(
                    "Your Balance",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  hintText: "Enter Balance Amount...",
                  hintStyle: TextStyle(
                    color: Colors.deepPurple,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
