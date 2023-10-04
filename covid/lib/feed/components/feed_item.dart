import 'package:covid/feed/components/bottomContent.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget feedCradView(BuildContext context, Map lists, int index) {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    // height: Get.height / 2.5,
    width: Get.width,
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          topHeader(lists, context),
          checkContentType(lists),
          BottomContent(index: index)
        ],
      ),
    ),
  );
}

Widget topHeader(Map lists, BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'DIET',
            style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color(0XFFA5B1C2)),
          ),
          Text(
            '1min',
            style: TextStyle(
                fontFamily: 'Inter', fontSize: 12, color: Color(0XFF545B63)),
          )
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                //child: Image.asset("assets/rahul.png"),
                backgroundImage: AssetImage("assets/rahul.png"),
                minRadius: 18,
                maxRadius: 20,
                //Image.asset("assets/rahul.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      lists["name"].toString(),
                      style: TextStyle(
                        color: Color(0XFF000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                      ),
                    ),
                    Text(
                      lists["status"].toString(),
                      style: TextStyle(fontSize: 10, color: Color(0XFF00A981)),
                    )
                  ],
                ),
              ),
            ],
          ),
          IconButton(
              onPressed: () async {
                await bottomSheet(context);
              },
              icon: Icon(Icons.more_vert))
        ],
      ),
      SizedBox(
        height: 10,
      ),
    ],
  );
}

Widget checkContentType(Map lists) {
  switch (lists["type"]) {
    case "postques":
      return postques(lists);
    case "post":
      return post(lists);
    case "event":
      return event(lists);
    case "poll":
      return poll(lists);
    default:
      return const SizedBox();
  }
}

Widget post(Map lists) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        lists["title"],
        style: TextStyle(color: Color(0XFF545B63), fontSize: 16),
      ),
      Text(lists["discription"]),
      Positioned(
        left: -20,
        right: 0,
        child: Image.asset(
          lists["image"],
        ),
      ),
    ],
  );
}

Widget postques(Map lists) {
  return Padding(
    padding: const EdgeInsets.only(right: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lists["title"].toString(),
          style: TextStyle(
              color: Color(0XFF545B63),
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600),
        ),
        Text(
          lists["discription"].toString(),
          style: TextStyle(
            color: Color(0XFF545B63),
            fontFamily: 'Inter',
            fontSize: 14,
          ),
          textAlign: TextAlign.justify,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          lists["location"].toString(),
          style: TextStyle(
              color: Color(0XFF00A981), fontSize: 10, fontFamily: 'Inter'),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    ),
  );
}

Widget event(Map lists) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Column(
      children: [],
    ),
  );
}

Widget poll(Map lists) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [],
    ),
  );
}

Widget likeWidget() {
  return Positioned(
    child: Container(
      width: Get.width / 1.6,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25)),
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              style: ButtonStyle(splashFactory: NoSplash.splashFactory),
              onPressed: () {},
              child: Row(
                children: [Image.asset("assets/thumbsUp.png"), Text("Like")],
              )),
          TextButton(
              style: ButtonStyle(splashFactory: NoSplash.splashFactory),
              onPressed: () {},
              child: Row(
                children: [Image.asset("assets/laugh.png"), Text("Haha")],
              )),
          TextButton(
              style: ButtonStyle(splashFactory: NoSplash.splashFactory),
              onPressed: () {},
              child: Row(
                children: [Image.asset("assets/sad.png"), Text("Sad")],
              )),
        ],
      ),
    ),
  );
}

Widget headerContainer() {
  return Container(
    height: Get.height / 3.2,
    width: Get.width,
    color: Colors.green,
  );
}

bottomSheet(BuildContext context) {
  return showModalBottomSheet(
      backgroundColor: Colors.white,
      elevation: 0,
      context: context,
      builder: (context) => Container(
          height: Get.height / 2.9, width: Get.width, child: listWidget()));
}

Widget listWidget() {
  return Column(
    children: [
      Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Container(
            width: 30,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
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
                      style: TextStyle(color: Color(0XFF545B63), fontSize: 14),
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
                      style: TextStyle(color: Color(0XFF545B63), fontSize: 14),
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
                      style: TextStyle(color: Color(0XFF545B63), fontSize: 14),
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
                      style: TextStyle(color: Color(0XFF545B63), fontSize: 14),
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
    ],
  );
}
