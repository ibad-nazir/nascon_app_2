import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nascon_app/common/constants.dart';
import 'package:nascon_app/main.dart';
import 'package:nascon_app/pages/project_details/screens/project_details.dart';
import 'package:nascon_app/pages/task/screen/task.dart';

import '../../Auth/forget_password/screens/forgot_password.dart';

class Dashboard extends StatefulWidget {
  Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final TextEditingController _search = TextEditingController();
  // DateTime timenow = DateTime.now();

  bool isCreateSelected = true;
  List<String> _images = [
    'https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
    'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
    'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
    'https://images.unsplash.com/photo-1593642702749-b7d2a804fbcf?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'
  ];

  DateTime timenow = DateTime.now();
  DateTime time1monthlater = DateTime.now().add(Duration(days: 30));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? Colors.black
          : Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dashboard",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    color: textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    final actions = [
                      CupertinoActionSheetAction(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.add,
                              color: Colors.black,
                            ),
                            Text("  Create Task"),
                          ],
                        ),
                      ),
                      CupertinoActionSheetAction(
                        onPressed: () {},
                        child: Text("Create Project"),
                      ),
                      CupertinoActionSheetAction(
                        onPressed: () {},
                        child: Text("Create Team"),
                      ),
                      CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPassword(),
                            ),
                          );
                        },
                        child: Text("Create Project"),
                      ),
                    ];
                    showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return Wrap(
                          children: actions
                              .map(
                                (action) => ListTile(
                                  title: action.child,
                                  onTap: action.onPressed,
                                ),
                              )
                              .toList(),
                        );
                      },
                    );
                  },
                  child: Container(
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
                ),
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
                  child: TextFormField(
                    style: GoogleFonts.poppins(fontSize: 14, color: textColor),
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
                        contentPadding: EdgeInsets.only(top: 15),
                        prefixIcon: Icon(
                          CupertinoIcons.search,
                          color: Colors.black,
                        ),
                        hintText: "Search",
                        labelStyle:
                            GoogleFonts.poppins(fontSize: 14, color: textColor),
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
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isCreateSelected = true;
                    });
                  },
                  child: Container(
                    width: 120,
                    height: 45,
                    decoration: BoxDecoration(
                      color: isCreateSelected ? secondary_color : Colors.white,
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
                    child: Center(
                      child: Text(
                        "Overview",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: isCreateSelected ? Colors.white : Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isCreateSelected = false;
                    });
                    // isCreateSelected = !isCreateSelected;
                    // // Add your onTap logic here
                  },
                  child: Container(
                    width: 120,
                    height: 45,
                    decoration: BoxDecoration(
                      color: !isCreateSelected ? secondary_color : Colors.white,
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
                    child: Center(
                      child: Text(
                        "Analytics",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: !isCreateSelected ? Colors.white : Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(CupertinoIcons.cube_box,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.orange
                        : Colors.orange),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Your Project",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.arrow_right,
                    color: Colors.black,
                    size: 18,
                  ),
                ),
              ],
            ),
            // Add your dashboard content here
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 21.0),
                  child: Container(
                    height: 160,
                    width: 330,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
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
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7.0, top: 6),
                  child: Container(
                    height: 160,
                    width: 355,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
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
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProjectDetails(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Container(
                      height: 160,
                      width: 430,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.4),
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 6.0,
                          right: 6,
                          bottom: 6,
                          top: 16,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, top: 15),
                                  child: Text(
                                    "Main UiKit",
                                    style: GoogleFonts.poppins(
                                      fontSize: 17,
                                      color: textColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                FlutterImageStack(
                                  imageList: _images,
                                  // showTotalCount: true,
                                  totalCount: 3,
                                  itemRadius: 35, // Radius of each images
                                  itemCount:
                                      3, // Maximum number of images to be shown in stack
                                  itemBorderWidth:
                                      2, // Border width around the images
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    size: 18,
                                  ),
                                  Text(
                                      "  ${timenow.day}/${timenow.month}/${timenow.year}",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: textColor,
                                      )),
                                  Spacer(),
                                  Text("------->",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: textColor,
                                      )),
                                  Spacer(),
                                  Icon(
                                    Icons.calendar_month,
                                    size: 18,
                                    color: secondary_color,
                                  ),
                                  Text(
                                    "  ${time1monthlater.day}/${time1monthlater.month}/${time1monthlater.year}",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: secondary_color,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(children: [
                                Text(
                                  "50%",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: textColor,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 10,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: LinearProgressIndicator(
                                    borderRadius: BorderRadius.circular(15),
                                    value: 0.5,
                                    backgroundColor:
                                        Colors.grey.withOpacity(0.2),
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        secondary_color),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "24",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "/48 Tasks",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: textColor,
                                  ),
                                ),
                              ]),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TaskScreen(),
                  ),
                );
              },
              child: Row(
                children: [
                  Icon(CupertinoIcons.check_mark_circled_solid,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.orange
                          : Colors.orange),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Your Recent Task",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: textColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.arrow_right,
                      color: Colors.black,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8, top: 15),
                      child: Container(
                        height: 110,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.4),
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Container(
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.grey, shape: BoxShape.circle),
                                child: Icon(CupertinoIcons.cube_box,
                                    size: 40, color: Colors.white),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "UserFlow Main UiKit",
                                    style: GoogleFonts.poppins(
                                      fontSize: 17,
                                      color: textColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_month,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "${timenow.day}/${timenow.month}/${timenow.year}",
                                        style: GoogleFonts.poppins(
                                          fontSize: 13,
                                          color: textColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
