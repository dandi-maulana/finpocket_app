import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Deposit extends StatelessWidget {
  static const nameRoute = "/Deposit";
  const Deposit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(50, 50),
        child: AppBar(
          foregroundColor: Colors.white,
          title: Text(
            "FinPocket Deposit",
            style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.deepPurpleAccent,
        ),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 280,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.deepPurpleAccent, width: 2.0),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                "Deposit Balance",
                style: GoogleFonts.roboto(
                  color: Colors.deepPurple,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Your Balance :",
                    style: GoogleFonts.roboto(color: Colors.deepPurple),
                  ),
                  Text(
                    "Rp. 100.000.000",
                    style: GoogleFonts.roboto(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(height: 10),
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
                  prefixIcon: Icon(
                    Icons.account_balance_wallet_outlined,
                    color: Colors.deepPurple,
                  ),
                  label: Text(
                    "Total Balance",
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
              SizedBox(height: 10),
              Text(
                "Virtual Account Number FinPocket",
                style: GoogleFonts.roboto(color: Colors.deepPurple),
              ),
              Text(
                "882816004920",
                style: GoogleFonts.roboto(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Center(
                                child: Text(
                                  "OK",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                          icon: Icon(
                            Icons.timer,
                            color: Colors.deepPurple,
                            size: 100,
                          ),
                          content: Text(
                            "Waiting For Deposit",
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  label: Text("Deposit"),
                  icon: Icon(Icons.account_balance),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent,
                    foregroundColor: Colors.white,
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
