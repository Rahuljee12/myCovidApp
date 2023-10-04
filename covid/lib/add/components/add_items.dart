import 'package:flutter/material.dart';
import 'package:get/get.dart';

bottomSheet(BuildContext context) {
  return showModalBottomSheet(
      isDismissible: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      context: context,
      builder: (context) => Container(
          height: Get.height / 2.5,
          width: Get.width,
          child: listWidget(context)));
}

Widget listWidget(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/eye.png"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Hide <Post type>",
                        style:
                            TextStyle(color: Color(0XFF545B63), fontSize: 14),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "see fewer post like this",
                          style:
                              TextStyle(color: Color(0XFFA5B1C2), fontSize: 10),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          thickness: 0.5,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/add-user.png"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Unfollow <username>",
                        style:
                            TextStyle(color: Color(0XFF545B63), fontSize: 14),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "see fewer post like this",
                          style:
                              TextStyle(color: Color(0XFFA5B1C2), fontSize: 10),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          thickness: 0.5,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/report.png"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Report <Post type>",
                        style:
                            TextStyle(color: Color(0XFF545B63), fontSize: 14),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "see fewer post like this",
                          style:
                              TextStyle(color: Color(0XFFA5B1C2), fontSize: 10),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          thickness: 0.5,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/link.png"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Copy <post type> link",
                        style:
                            TextStyle(color: Color(0XFF545B63), fontSize: 14),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "see fewer post like this",
                          style:
                              TextStyle(color: Color(0XFFA5B1C2), fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 17,
        ),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/close.png"),
            ),
          ),
        )
      ],
    ),
  );
}
