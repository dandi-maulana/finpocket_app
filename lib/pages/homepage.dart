import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import './withdraw.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  static const nameRoute = "/Homepage";
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    var faker = Faker();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(40, 40),
        child: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),

          title: Text(
            "FinPocket",
            style: GoogleFonts.roboto(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
      ),
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
                  SizedBox(height: 30),
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
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        iconSize: 30,
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context, Withdraw.nameRoute);
                        },
                        icon: Icon(Icons.account_balance_wallet),
                      ),
                      IconButton(
                        iconSize: 30,
                        color: Colors.white,
                        onPressed: () {},
                        icon: Icon(Icons.account_balance),
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
                    trailing: Icon(Icons.menu),
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
              onPressed: () {},
              child: Icon(Icons.add, color: Colors.deepPurple, size: 30),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person, color: Colors.white, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
