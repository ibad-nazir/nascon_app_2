import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/constants.dart';
import '../../../main.dart';

class ProjectDetails extends StatelessWidget {
  ProjectDetails({super.key});
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
          padding: const EdgeInsets.only(left: 15.0, right: 15),
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
                    padding: const EdgeInsets.only(left: 0.0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(CupertinoIcons.back)),
                  ),
                  Text(
                    "Project Details",
                    style: GoogleFonts.poppins(
                      fontSize: 21,
                      color: textColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
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
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                    child: Icon(CupertinoIcons.cube_box,
                        size: 40, color: Colors.white),
                  ),
                  Text(
                    " Main UiKit",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: textColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Icon(CupertinoIcons.bell),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(CupertinoIcons.ellipsis),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Brainstorm",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      CupertinoIcons.chevron_down,
                      size: 16,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Design",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      CupertinoIcons.chevron_down,
                      size: 16,
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.zero,
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
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          shape: BoxShape.circle),
                                      child: Icon(CupertinoIcons.cube_box,
                                          size: 20, color: Colors.white),
                                    ),
                                    Text(
                                      "   UserFlow ",
                                      style: GoogleFonts.poppins(
                                        fontSize: 17,
                                        color: textColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Spacer(),
                                    FlutterImageStack(
                                      imageList: _images,
                                      // showTotalCount: true,
                                      totalCount: 3,
                                      itemRadius: 30, // Radius of each images
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
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
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: 10,
                    shrinkWrap: true),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, bottom: 20),
                  child: Text("+ ADD group ",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: textColor)),
                ),
              ),
            ],
          ),
        ));
  }
}
