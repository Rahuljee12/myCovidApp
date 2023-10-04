import 'package:covid/feed/components/feed_item.dart';
import 'package:covid/rxvariables.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class BottomContent extends StatefulWidget {
  int? index;
  BottomContent({super.key, this.index});

  @override
  State<BottomContent> createState() => _BottomContentState();
}

class _BottomContentState extends State<BottomContent> {
  rxVariables rxvariables = Get.put(rxVariables());
  handleClick() {
    for (int i = 0; i < 6; i++) {
      if (i == widget.index) {
        rxvariables.likeBool[i] = true;
      } else {
        rxvariables.likeBool[i] = false;
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // for (int i = 0; i < 6; i++) {
    //   rxvariables.likeBool.add(false);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Column(
            children: [
              Divider(
                thickness: 0.2,
                color: Color(0XFF545B63),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        for (int i = 0; i < 3; i++)
                          Align(
                            widthFactor: 0.5,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundImage: AssetImage("assets/rahul.png"),
                            ),
                          )
                      ],
                    ),
                    rxvariables.likeBool[widget.index!]
                        ? likeWidget()
                        : SizedBox(),
                  ],
                ),
              ),
              Divider(
                thickness: 0.2,
                color: Color(0XFF545B63),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      handleClick();

                      //rxvariables.like.value = true;
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/Like.png",
                          height: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "24",
                          style:
                              TextStyle(fontSize: 12, color: Color(0XFF545B63)),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/Shape.png",
                            height: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("24",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0XFF545B63)))
                        ],
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Image.asset("assets/bookmark-full.png")),
                  TextButton(
                      onPressed: () {},
                      child: Image.asset("assets/share-alt.png")),
                ],
              ),
            ],
          ),
        ],
        // ),
      ),
    );
  }
}
