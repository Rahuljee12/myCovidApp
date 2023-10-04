import 'package:covid/bottombar/components/bottombar_items.dart';

import 'package:flutter/material.dart';

import '../add/components/add_items.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0XFFA5B1C2),
              spreadRadius: 1,
            ),
          ],
        ),
        child: BottomNavigationBar(
          unselectedItemColor: Color(0XFFA5B1C2),
          elevation: 0,
          selectedItemColor: Color(0XFF00A981),
          unselectedFontSize: 10,
          selectedFontSize: 10,
          onTap: (int val) {
            setState(() {
              if (val == 2) {
                selectedIndex = 0;
                bottomSheet(context);
              } else {
                selectedIndex = val;
              }
            });
          },
          type: BottomNavigationBarType.fixed,
          items: getItem(bottomItem),
          currentIndex: selectedIndex,
        ),
      ),
    );
  }
}
