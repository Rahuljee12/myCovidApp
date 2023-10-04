import 'package:covid/data.dart';
import 'package:covid/feed/components/feed_item.dart';
import 'package:covid/rxvariables.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  rxVariables rxvariables = Get.put(rxVariables());
  handleClick() {
    for (int i = 0; i < 6; i++) {
      rxvariables.likeBool[i] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: GestureDetector(
          onTap: () {
            handleClick();
          },
          child: Container(
            height: Get.height,
            child: Column(
              children: [
                // headerContainer(),
                // const SizedBox(
                //   height: 20,
                // ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SizedBox(
                    height: Get.height / 1.09,
                    width: Get.width,
                    child: ListView.builder(
                        itemCount: feed.length,
                        itemBuilder: (BuildContext context, int index) {
                          return feedCradView(context, feed[index], index);
                        }),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
