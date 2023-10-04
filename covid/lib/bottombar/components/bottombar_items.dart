import 'package:covid/messages/messages_view.dart';
import 'package:covid/services/services_view.dart';
import 'package:flutter/material.dart';

import '../../add/add_view.dart';
import '../../feed/feed_view.dart';
import '../../library/library_view.dart';

class myItem {
  String itemName;
  Image defaultIcon;
  Image activeIcon;
  myItem(this.itemName, this.defaultIcon, this.activeIcon);
}

List<myItem> bottomItem = [
  myItem(
      "Feed",
      Image.asset(
        "assets/feed.png",
        height: 32,
        width: 32,
      ),
      Image.asset(
        "assets/feed-selected.png",
        height: 32,
        width: 32,
      )),
  myItem(
      "Library",
      Image.asset(
        "assets/library.png",
        height: 32,
        width: 32,
      ),
      Image.asset(
        "assets/library-selected.png",
        height: 32,
        width: 32,
      )),
  myItem(
      '',
      Image.asset(
        "assets/Default.png",
        height: 40,
        width: 40,
      ),
      Image.asset(
        "assets/Default.png",
        height: 40,
        width: 40,
      )),
  myItem(
      "message",
      Image.asset(
        "assets/messages.png",
        height: 32,
        width: 32,
      ),
      Image.asset(
        "assets/messages-selected.png",
        height: 32,
        width: 32,
      )),
  myItem(
      "Services",
      Image.asset(
        "assets/services.png",
        height: 32,
        width: 32,
      ),
      Image.asset(
        "assets/services-selected.png",
        height: 32,
        width: 32,
      ))
];

List<BottomNavigationBarItem> getItem(List<myItem> tabs) {
  return tabs
      .map((items) => BottomNavigationBarItem(
          label: items.itemName,
          icon: items.defaultIcon,
          activeIcon: items.activeIcon))
      .toList();
}

List pages = const [Feed(), Library(), Add(), Messages(), Services()];
