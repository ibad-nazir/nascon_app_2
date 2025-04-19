import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nascon_app/main.dart';

import '../../../../common/constants.dart';

class CreateWorkSpace extends StatelessWidget {
  CreateWorkSpace({super.key});
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _noController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? darkbackground_color
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
                  Text("Create Workspace",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: textColor)),
                  SizedBox(
                    width: 50,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text("Name",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: textColor)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  height: 55, // Adjust the height as needed
                  child: Material(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white,
                    elevation: 5,
                    child: TextFormField(
                      style:
                          GoogleFonts.poppins(fontSize: 14, color: textColor),
                      controller: _nameController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 13),
                          prefixIcon: Icon(
                            CupertinoIcons.person,
                            color: Colors.black,
                          ),
                          hintText: "Enter Name",
                          labelStyle: GoogleFonts.poppins(
                              fontSize: 14, color: textColor),
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Color(0xFFBABABA),
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text("Number of Member",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: textColor)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  height: 55, // Adjust the height as needed
                  child: Material(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white,
                    elevation: 5,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style:
                          GoogleFonts.poppins(fontSize: 14, color: textColor),
                      controller: _noController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 13),
                          prefixIcon: Icon(
                            CupertinoIcons.person_2,
                            color: Colors.black,
                          ),
                          hintText: "Enter Number of Member",
                          labelStyle: GoogleFonts.poppins(
                              fontSize: 14, color: textColor),
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Color(0xFFBABABA),
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text("Email",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: textColor)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  height: 55, // Adjust the height as needed
                  child: Material(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white,
                    elevation: 5,
                    child: TextFormField(
                      style:
                          GoogleFonts.poppins(fontSize: 14, color: textColor),
                      controller: _emailController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 13),
                          prefixIcon: Icon(
                            CupertinoIcons.mail,
                            color: Colors.black,
                          ),
                          hintText: "Enter Email",
                          labelStyle: GoogleFonts.poppins(
                              fontSize: 14, color: textColor),
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Color(0xFFBABABA),
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 5, right: 5),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => OtpScreen(),
                    //   ),
                    // );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                      color: secondary_color,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Create",
                        style: GoogleFonts.poppins(
                            fontSize: 17, color: Colors.white),
                      ),
                    ),
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
