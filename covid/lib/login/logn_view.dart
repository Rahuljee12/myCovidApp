import 'package:covid/bottombar/bottombar_view.dart';
import 'package:covid/login/components/login_item.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 189, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/Logo.png",
              height: 50,
              width: 50,
            ),
            SizedBox(
              height: 20,
            ),
            const Text(
              "Welcome to \nHealthNest",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0XFF545B63),
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Inter',
                  height: 1.2),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Enter Mobile Number",
                  style: TextStyle(color: Color(0XFFA5B1C2)),
                ),
                Row(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.people),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Expanded(
                      child: numberInput(),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "We never compromise on security!\nHelp us create a safe place by providing your mobile\nnumber to maintain authenticity.",
              style: TextStyle(
                  color: Color(0XFFA5B1C2), fontSize: 12, height: 1.3),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Bottombar()));
                  },
                  child: Container(
                    height: 51,
                    width: 107,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Color(0XFF00A981),
                    ),
                    child: Center(
                      child: Text(
                        "Send OTP",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
