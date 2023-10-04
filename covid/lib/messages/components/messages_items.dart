import 'package:covid/rxvariables.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget header() {
  return Container(
    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
    decoration: BoxDecoration(color: Colors.white),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Edit",
              style: TextStyle(
                  fontFamily: "Inter",
                  color: Color(0XFF00A981),
                  fontSize: 16,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt_outlined),
                  color: Color(0XFF00A981),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.note_alt_outlined),
                    color: Color(0XFF00A981))
              ],
            )
          ],
        ),
        Container(
          height: 37,
          width: Get.width / 1.3,
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(fontSize: 13),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
              prefixIcon: Icon(
                Icons.search_outlined,
                color: Colors.grey[500],
              ),
              hintText: "Search",
              hintStyle: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500),
              contentPadding: EdgeInsets.zero,
              border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "User Lists",
              style: TextStyle(
                  color: Color(0XFF00A981), fontSize: 15, fontFamily: 'Inter'),
            ),
            Text("Create Group",
                style: TextStyle(
                    color: Color(0XFF00A981),
                    fontSize: 15,
                    fontFamily: 'Inter'))
          ],
        )
      ],
    ),
  );
}

messagebottomSheet(BuildContext context) {
  rxVariables rxvariables = Get.put(rxVariables());
  return showModalBottomSheet(
    elevation: 0,
    constraints: BoxConstraints(
        minHeight: context.mediaQuerySize.height,
        maxHeight: context.mediaQuerySize.height),
    isScrollControlled: true,
    context: context,
    builder: (context) => GestureDetector(
      onTap: () {
        rxvariables.changePosition.value = false;
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          currentFocus.focusedChild!.unfocus();
        }
      },
      child: Container(
        height: Get.height,
        width: Get.width,
        color: Color.fromARGB(243, 250, 253, 248),
        child: Obx(
          () => Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 10, top: 25),
                          child: Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                padding: EdgeInsets.fromLTRB(11, 5, 11, 15),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(243, 217, 244, 196),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Image.asset("assets/arrow_down.png",
                                    height: 20,
                                    width: 30,
                                    color: Color.fromARGB(243, 78, 135, 32)
                                    // Color.fromARGB(255, 255, 151, 141),
                                    ),
                              ),
                            ),
                          )),
                      Positioned(
                          child: Padding(
                        padding: const EdgeInsets.only(
                            top: 50.0, left: 10, right: 10),
                        child: Center(
                          child: Container(
                            width: Get.width,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(243, 217, 244, 196),
                                borderRadius: BorderRadius.circular(12)),
                            child: const Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage("assets/rahul.png"),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Rahul Bhandari",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontFamily: 'Inter'),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.video_call_outlined,
                                        color: Colors.green,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Icon(
                                        Icons.call_outlined,
                                        color: Colors.green,
                                        size: 25,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0, right: 0),
                    child: Divider(
                      thickness: 1,
                      color: Color.fromARGB(243, 187, 240, 144),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: Get.height / 1.15,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(243, 250, 253, 248),
                    ),
                  )
                ],
              ),
              sendBottom(context)
            ],
          ),
        ),
      ),
    ),
  );
}

Widget sendBottom(BuildContext context) {
  rxVariables rxvariables = Get.put(rxVariables());

  return Positioned(
    bottom: rxvariables.changePosition.value ? Get.height / 2.7 : 20,
    child: Container(
      height: 40,
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: Get.width / 1.2,
            child: TextField(
              onTap: () {
                rxvariables.changePosition.value = true;
              },
              onSubmitted: (val) {
                rxvariables.changePosition.value = false;
              },
              textAlignVertical: TextAlignVertical.center,
              style: TextStyle(fontSize: 13),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(243, 217, 244, 196),
                hintText: "Send Messages",
                prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_box_outlined,
                      color: Color.fromARGB(243, 78, 135, 32),
                    )),
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send_outlined,
                      color: Color.fromARGB(243, 78, 135, 32),
                    )),
                hintStyle: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500),
                contentPadding: EdgeInsets.zero,
                border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
