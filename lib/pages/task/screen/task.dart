import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nascon_app/common/constants.dart';
import 'package:nascon_app/main.dart';

class TaskScreen extends StatelessWidget {
  final TextEditingController _search = TextEditingController();
  TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? const Color(0xff1c1244)
          : Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: .0),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(CupertinoIcons.back)),
                ),
                Text("Create Task",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),

                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.orange
                        : secondary_color,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Icon(
                    CupertinoIcons.add,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                // Add your task creation form here
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                height: 55, // Adjust the height as needed
                child: Material(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.white,
                  elevation: 5,
                  child: Column(
                    children: [
                      TextFormField(
                        style:
                            GoogleFonts.poppins(fontSize: 14, color: textColor),
                        controller: _search,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                _search.clear();
                              },
                              icon: Icon(
                                Icons.filter_alt_outlined,
                                color: Colors.black,
                              ),
                            ),
                            contentPadding: EdgeInsets.only(top: 13),
                            prefixIcon: Icon(
                              CupertinoIcons.search,
                              color: Colors.black,
                            ),
                            hintText: "Search",
                            labelStyle: GoogleFonts.poppins(
                                fontSize: 14, color: textColor),
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Color(0xFFBABABA),
                            ),
                            border: InputBorder.none),
                      ),
                      SizedBox(height: 30),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 35,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.orange
                                      : secondary_color,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "Project",
                                  style:
                                      GoogleFonts.poppins(color: Colors.white),
                                  textAlign: TextAlign.center,
                                )),
                            Container(child: Text("Completed")),
                            Container(child: Text("Flags")),
                          ]),

                          
                    ],
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
