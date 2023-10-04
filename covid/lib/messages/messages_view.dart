import 'package:covid/messages/components/messages_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: Get.height,
          width: Get.width,
          color: Colors.white,
          child: Column(
            children: [
              header(),
              Divider(
                thickness: 0.3,
              ),
              SingleChildScrollView(
                child: Container(
                  color: Colors.white,
                  height: Get.height / 1.355,
                  width: Get.width,
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, int index) => GestureDetector(
                            onTap: () {
                              messagebottomSheet(context);
                            },
                            child: Container(
                              color: Colors.white,
                              width: Get.width,
                              child: const Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage("assets/rahul.png"),
                                        radius: 25,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Rahul Bhandari",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Inter'),
                                          ),
                                          Text(
                                            "Last Message",
                                            style: TextStyle(
                                                color: Color(
                                                  0XFF545B63,
                                                ),
                                                fontSize: 14,
                                                fontFamily: 'Inter'),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 40),
                                    child: Divider(
                                      thickness: 0.3,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  )
                                ],
                              ),
                            ),
                          )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
