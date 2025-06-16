import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import './homepage.dart';
import './sign_in.dart';
import 'package:google_fonts/google_fonts.dart';
import './add_category.dart';

class Profile extends StatelessWidget {
  static const nameRoute = "/Profile";
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var faker = Faker();
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 380,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.deepPurpleAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://picsum.photos/200"),
              ),
              SizedBox(height: 10),
              Text(
                faker.person.firstName(),
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                faker.internet.email(),
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your Balance",
                      style: GoogleFonts.roboto(
                        color: Colors.deepPurpleAccent,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Rp. 100.000.00",
                      style: GoogleFonts.roboto(
                        color: Colors.deepPurpleAccent,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, Signin.nameRoute);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                ),
                icon: Icon(Icons.exit_to_app),
                label: Text(
                  "Log Out",
                  style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
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
              onPressed: () {
                Navigator.pushNamed(context, Homepage.nameRoute);
              },
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
