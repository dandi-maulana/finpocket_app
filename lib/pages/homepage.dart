import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import './withdraw.dart';
import './deposit.dart';
import 'package:google_fonts/google_fonts.dart';
import './profile.dart';
import './add_category.dart';
import './pay.dart';

class Homepage extends StatelessWidget {
  static const nameRoute = "/Homepage";
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    var faker = Faker();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Center(
            child: Container(
              width: 380,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.deepPurple, Colors.deepPurpleAccent],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "FinPocket",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 40),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          "https://picsum.photos/200",
                        ),
                      ),
                      SizedBox(width: 30),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            faker.person.firstName(),
                            style: GoogleFonts.roboto(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Your Balance :",
                            style: GoogleFonts.roboto(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Rp.100.000.000",
                            style: GoogleFonts.roboto(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        // iconSize: 30,
                        // color: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context, Pay.nameRoute);
                        },
                        style: ElevatedButton.styleFrom(),
                        icon: Icon(Icons.payment),
                        label: Text(
                          "Pay",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton.icon(
                        // iconSize: 30,
                        // color: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context, Withdraw.nameRoute);
                        },
                        style: ElevatedButton.styleFrom(),
                        icon: Icon(Icons.account_balance_wallet),
                        label: Text(
                          "Withdraw",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton.icon(
                        // iconSize: 30,
                        // color: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context, Deposit.nameRoute);
                        },
                        icon: Icon(Icons.account_balance),
                        label: Text(
                          "Deposit",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Your Categories",
            style: GoogleFonts.roboto(
              fontSize: 20,
              color: Colors.deepPurpleAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name Category"),
                        SizedBox(height: 10),
                        Text("Rp.100.000"),
                      ],
                    ),
                    leading: Icon(
                      Icons.category,
                      color: Colors.deepPurpleAccent,
                      size: 40,
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              actions: [
                                ElevatedButton.icon(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.deepPurple,
                                  ),
                                  label: Text("Withdraw"),
                                  icon: Icon(Icons.account_balance_wallet),
                                ),
                                ElevatedButton.icon(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.deepPurple,
                                  ),
                                  label: Text("Deposit"),
                                  icon: Icon(Icons.account_balance),
                                ),
                                ElevatedButton.icon(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.red,
                                  ),
                                  label: Text("Delete"),
                                  icon: Icon(Icons.delete),
                                ),
                              ],
                              title: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.deepPurple,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Withdraw Category",
                                    style: GoogleFonts.roboto(
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Your Balance :",
                                        style: GoogleFonts.roboto(
                                          color: Colors.deepPurple,
                                        ),
                                      ),
                                      SizedBox(width: 10),
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
                                  TextField(
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.account_balance_wallet,
                                        color: Colors.deepPurple,
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.deepPurple,
                                        ),
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
                            );
                          },
                        );
                      },
                      color: Colors.deepPurple,
                      icon: Icon(Icons.menu),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.deepPurpleAccent],
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home, color: Colors.white, size: 30),
            ),
            FloatingActionButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AddCategory();
                  },
                );
              },
              child: Icon(Icons.add, color: Colors.deepPurple, size: 30),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Profile.nameRoute);
              },
              icon: Icon(Icons.person, color: Colors.white, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
