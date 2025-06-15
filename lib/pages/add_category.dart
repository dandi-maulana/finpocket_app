import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCategory extends StatelessWidget {
  static const nameRoute = "/AddCategory";
  const AddCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        ElevatedButton.icon(
          onPressed: () {
            Navigator.pop(context);
          },
          label: Text("Back"),
          icon: Icon(Icons.undo),
        ),
        ElevatedButton.icon(
          onPressed: () {
            Navigator.pop(context);
          },
          label: Text("Add Category"),
          icon: Icon(Icons.add),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
          ),
        ),
      ],
      title: Text(
        "Add Your Category",
        textAlign: TextAlign.center,
        style: GoogleFonts.roboto(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
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
              prefixIcon: Icon(Icons.account_balance, color: Colors.deepPurple),
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
    );
  }
}
